
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileResponse {
  Future<PickedFile?> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return null;
      final imageTemp = PickedFile(image.path);
      return imageTemp;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}
