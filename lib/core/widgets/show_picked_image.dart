import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({super.key, required this.image});

  final XFile? image;
  @override
  Widget build(BuildContext context) {
    return image != null ? Image.file(File(image!.path)) : Container();
  }
}

// import 'dart:io';
//
// import 'package:aedc_clinic/core/models/selected_images_model.dart';
// import 'package:flutter/material.dart';
//
// class ShowPickedImage extends StatelessWidget {
//   const ShowPickedImage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     SelectedImagesModel selectedImages = SelectedImagesModel();
//     return Scaffold(
//       body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemCount: selectedImages.pickedImages.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: SizedBox(
//                 height: 200,
//                 width: 200,
//                 child: Image.file(
//                   File(selectedImages.pickedImages[index].path),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
