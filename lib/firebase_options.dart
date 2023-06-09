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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCRQqThy-6Fs_cHL6QeNreaFwwi9hnMPA0',
    appId: '1:956222196956:web:bdcb570f648ccb87047819',
    messagingSenderId: '956222196956',
    projectId: 'authentest-5a61c',
    authDomain: 'authentest-5a61c.firebaseapp.com',
    storageBucket: 'authentest-5a61c.appspot.com',
    measurementId: 'G-HV929WRTD9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBq6eSXrgjYf-u-7c6jBSWl26n7lPQPPcc',
    appId: '1:956222196956:android:95a114628e428151047819',
    messagingSenderId: '956222196956',
    projectId: 'authentest-5a61c',
    storageBucket: 'authentest-5a61c.appspot.com',
  );
}
