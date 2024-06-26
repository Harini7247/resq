// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsErr8ULrA9Q972OUytQpFvFqI2Zy88JM',
    appId: '1:312978743840:android:86dc3b86e3026c170b5245',
    messagingSenderId: '312978743840',
    projectId: 'resq-d0173',
    storageBucket: 'resq-d0173.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWW1bvNZXmgn8Fxkjjltowop66pL0j9Ak',
    appId: '1:312978743840:ios:4c8a2882fb03da060b5245',
    messagingSenderId: '312978743840',
    projectId: 'resq-d0173',
    storageBucket: 'resq-d0173.appspot.com',
    androidClientId: '312978743840-u5jodk99m9b4i6dmjeic50kemo6bcj1b.apps.googleusercontent.com',
    iosClientId: '312978743840-lnlhgv1r3ecatqqg3609g96vmgska4v1.apps.googleusercontent.com',
    iosBundleId: 'com.example.resq',
  );
}
