// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAzmE9VWFcvL4KHwBthIIfkR7GkgB3Gn2c',
    appId: '1:201887392803:web:01ec0c191afa74b84cfd96',
    messagingSenderId: '201887392803',
    projectId: 'petproject-bb183',
    authDomain: 'petproject-bb183.firebaseapp.com',
    storageBucket: 'petproject-bb183.appspot.com',
    measurementId: 'G-5GKHZ59J83',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBr6YGiNXnTD418-CcOpcz6UqoD7XY8MAM',
    appId: '1:201887392803:android:6eed181058fc4e1b4cfd96',
    messagingSenderId: '201887392803',
    projectId: 'petproject-bb183',
    storageBucket: 'petproject-bb183.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZJ88IlJ6Ceq0nluzEbRi4d37y67DyndE',
    appId: '1:201887392803:ios:d7212cb6959ae2b34cfd96',
    messagingSenderId: '201887392803',
    projectId: 'petproject-bb183',
    storageBucket: 'petproject-bb183.appspot.com',
    iosClientId:
        '201887392803-86rgvsui26mirfje2d3vmfj3v26q8kab.apps.googleusercontent.com',
    iosBundleId: 'com.petproject.app',
  );
}
