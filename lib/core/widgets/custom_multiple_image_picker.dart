import 'package:aedc_clinic/core/models/selected_images_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../theme/colors.dart';

class CustomMultipleImagePicker extends StatefulWidget {
  const CustomMultipleImagePicker({super.key});

  @override
  State<CustomMultipleImagePicker> createState() =>
      _CustomMultipleImagePickerState();
}

class _CustomMultipleImagePickerState extends State<CustomMultipleImagePicker> {
  SelectedImagesModel selectedImages = SelectedImagesModel();

  void pickMultipleImages() async {
    var storageStatus = await Permission.storage.status;
    if (storageStatus.isDenied) {
      await Permission.storage.request();
    } else if (storageStatus.isGranted) {
      final ImagePicker picker = ImagePicker();
      final List<XFile> images = await picker.pickMultiImage();

      if (images.isNotEmpty) {
        selectedImages.pickedImages.addAll(images);
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
              onPressed: pickMultipleImages,
              child: const Text('إرفع الصور من هنا'),
            ),
          ),
        ],
      ),
    );
  }
}
