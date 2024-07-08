import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../models/selected_images_model.dart';
import '../theme/colors.dart';

class CustomCameraImagePicker extends StatefulWidget {
  const CustomCameraImagePicker({super.key});

  @override
  State<CustomCameraImagePicker> createState() =>
      _CustomCameraImagePickerState();
}

class _CustomCameraImagePickerState extends State<CustomCameraImagePicker> {
  SelectedImagesModel selectedImages = SelectedImagesModel();

  void captureCameraImage() async {
    var storageStatus = await Permission.camera.status;
    if (storageStatus.isDenied) {
      await Permission.camera.request();
    } else if (storageStatus.isGranted) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        selectedImages.pickedImages.add(image);
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
              onPressed: captureCameraImage,
              child: const Text('صور التحويل من هنا'),
            ),
          ),
        ],
      ),
    );
  }
}
