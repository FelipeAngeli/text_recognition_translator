import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerService {
  static final ImagePicker _picker = ImagePicker();

  static Future<File?> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    return pickedFile != null ? File(pickedFile.path) : null;
  }
}
