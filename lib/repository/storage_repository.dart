import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageRepository {
  Future<String> upload(File file) async {
    final storage = FirebaseStorage.instance;

    final fileUpload =
        await storage.ref('pets/${file.hashCode.toString()}').putFile(file);
    final photoUrl = await fileUpload.ref.getDownloadURL();

    return photoUrl;
  }
}
