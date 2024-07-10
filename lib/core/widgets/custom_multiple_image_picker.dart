import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../theme/colors.dart';

class CustomMultipleImagePicker extends StatefulWidget {
  const CustomMultipleImagePicker(
      {super.key, required this.buttonText, required this.noticeText});

  final Widget buttonText;

  final Widget noticeText;

  @override
  State<CustomMultipleImagePicker> createState() =>
      _CustomMultipleImagePickerState();
}

class _CustomMultipleImagePickerState extends State<CustomMultipleImagePicker> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? selectedImages = [];

  Future<void> pickMultipleImages() async {
    var storageStatus = await Permission.storage.status;
    if (storageStatus.isDenied) {
      await Permission.storage.request();
    } else if (storageStatus.isGranted) {
      final List<XFile> returnedImages = await imagePicker.pickMultiImage();
      if (returnedImages.isNotEmpty) {
        setState(() {
          selectedImages!.addAll(returnedImages);
        });
      }
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
              onPressed: pickMultipleImages,
              child: widget.buttonText,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          selectedImages != null
              ? SizedBox(
                  height: 100.h,
                  width: 50.w,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: selectedImages!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.file(
                        File(selectedImages![index].path),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                )
              : widget.noticeText,
        ],
      ),
    );
  }
}
