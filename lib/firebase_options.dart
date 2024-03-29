// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBrHQsETo1-P4amLmro5Gd6NOaqX3Dz49Q',
    appId: '1:972484977912:web:abba37b43e6ac4222a070d',
    messagingSenderId: '972484977912',
    projectId: 'first-stacked-app-2024',
    authDomain: 'first-stacked-app-2024.firebaseapp.com',
    storageBucket: 'first-stacked-app-2024.appspot.com',
    measurementId: 'G-P517V65Y4M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOk0wfGGAvfWOaMUDZE1JRVVIqN9UqKQ4',
    appId: '1:972484977912:android:d6c3a660d2eaa7a42a070d',
    messagingSenderId: '972484977912',
    projectId: 'first-stacked-app-2024',
    storageBucket: 'first-stacked-app-2024.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7caT6Mtl4_R4HqWzT6NHoZCuoMMK6evc',
    appId: '1:972484977912:ios:8c468d845332c4692a070d',
    messagingSenderId: '972484977912',
    projectId: 'first-stacked-app-2024',
    storageBucket: 'first-stacked-app-2024.appspot.com',
    iosBundleId: 'com.example.firstStackedApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7caT6Mtl4_R4HqWzT6NHoZCuoMMK6evc',
    appId: '1:972484977912:ios:04cbd19a03631a642a070d',
    messagingSenderId: '972484977912',
    projectId: 'first-stacked-app-2024',
    storageBucket: 'first-stacked-app-2024.appspot.com',
    iosBundleId: 'com.example.firstStackedApp.RunnerTests',
  );
}
