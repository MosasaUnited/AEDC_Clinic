import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../theme/colors.dart';

class CustomCameraImagePicker extends StatefulWidget {
  const CustomCameraImagePicker(
      {super.key, required this.buttonText, required this.noticeText});

  final Widget buttonText;

  final Widget noticeText;

  @override
  State<CustomCameraImagePicker> createState() =>
      _CustomCameraImagePickerState();
}

class _CustomCameraImagePickerState extends State<CustomCameraImagePicker> {
  final ImagePicker imagePicker = ImagePicker();
  File? selectedImage;

  Future<void> captureCameraImage() async {
    var storageStatus = await Permission.camera.status;
    if (storageStatus.isDenied) {
      await Permission.camera.request();
    } else if (storageStatus.isGranted) {
      final returnedImage =
          await imagePicker.pickImage(source: ImageSource.camera);
      if (returnedImage == null) return;
      setState(() {
        selectedImage = File(returnedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.h,
            width: 200.w,
            child: MaterialButton(
              color: MyColors.appColor,
              textColor: Colors.white,
              padding: const EdgeInsets.all(20),
              onPressed: captureCameraImage,
              child: widget.buttonText,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          selectedImage != null
              ? SizedBox(
                  height: 150.h,
                  width: 100.w,
                  child: Image.file(selectedImage!),
                )
              : widget.noticeText,
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
