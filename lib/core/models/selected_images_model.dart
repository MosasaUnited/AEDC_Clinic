import 'package:image_picker/image_picker.dart';

class SelectedImagesModel {
  static final SelectedImagesModel instance = SelectedImagesModel.internal();

  factory SelectedImagesModel() => instance;

  SelectedImagesModel.internal();

  List<XFile> pickedImages = [];
}
