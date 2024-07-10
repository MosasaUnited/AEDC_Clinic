import 'dart:io';

import 'package:aedc_clinic/core/models/selected_images_model.dart';
import 'package:aedc_clinic/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomSingleImagePicker extends StatefulWidget {
  const CustomSingleImagePicker({super.key});

  @override
  State<CustomSingleImagePicker> createState() =>
      _CustomSingleImagePickerState();
}

class _CustomSingleImagePickerState extends State<CustomSingleImagePicker> {
  SelectedImagesModel? selectedImages = SelectedImagesModel();

  Future<void> pickSingleImage() async {
    var storageStatus = await Permission.storage.status;
    if (storageStatus.isDenied) {
      await Permission.storage.request();
    } else if (storageStatus.isGranted) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        selectedImages!.pickedImages.add(image);
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
            height: 70.h,
            width: 200.w,
            child: MaterialButton(
              color: MyColors.appColor,
              textColor: Colors.white,
              padding: const EdgeInsets.all(20),
              onPressed: pickSingleImage,
              child: const Text('إرفع صورة التحويل من هنا'),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          selectedImages != null
              ? Image.file(selectedImages! as File)
              : const Text('Please Selected An Image'),
        ],
      ),
    );
  }
}
