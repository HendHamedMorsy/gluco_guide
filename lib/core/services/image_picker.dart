import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker? _picker;
  ImagePickerService(this._picker);

  Future<File?> pickImage() async {
    XFile? image = await _picker?.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1024,
      maxWidth: 768,
    );

    ///[no image selected]
    if (image != null) {
      return File(image.path);
    }
    return null;
  }
  Future<List<File>> pickMultiImage() async {
    List<XFile>? images = await _picker?.pickMultiImage(
      maxHeight: 1024,
      maxWidth: 768,

    );
    List<File>? selectedImages = images?.map<File>((XFile xFileImage) => File(xFileImage.path)).toList();
    if (selectedImages != null) {
      return selectedImages;
    }
    return <File>[];
  }
}
