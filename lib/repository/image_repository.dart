import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageRepository {
  Future<File?> getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }
}
