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
        return windows;
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
    apiKey: 'AIzaSyBkkw21b-tV0TkA8RttS6jvz7yuXimngOQ',
    appId: '1:951071308757:web:9256e2009c95a233305b5c',
    messagingSenderId: '951071308757',
    projectId: 'notes-7b0f3',
    authDomain: 'notes-7b0f3.firebaseapp.com',
    storageBucket: 'notes-7b0f3.appspot.com',
    measurementId: 'G-RMSERQZ50V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCX7C4KYF1lW9q4vr11szPvqcqM3gxInHs',
    appId: '1:951071308757:android:bf0bc7e935690b84305b5c',
    messagingSenderId: '951071308757',
    projectId: 'notes-7b0f3',
    storageBucket: 'notes-7b0f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoSCg4PF2Fh9gChc4GqBRGupw8qQTKKzY',
    appId: '1:951071308757:ios:4854fb74a2fb18ab305b5c',
    messagingSenderId: '951071308757',
    projectId: 'notes-7b0f3',
    storageBucket: 'notes-7b0f3.appspot.com',
    iosBundleId: 'com.example.notes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoSCg4PF2Fh9gChc4GqBRGupw8qQTKKzY',
    appId: '1:951071308757:ios:4854fb74a2fb18ab305b5c',
    messagingSenderId: '951071308757',
    projectId: 'notes-7b0f3',
    storageBucket: 'notes-7b0f3.appspot.com',
    iosBundleId: 'com.example.notes',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkkw21b-tV0TkA8RttS6jvz7yuXimngOQ',
    appId: '1:951071308757:web:2ba15997bc173557305b5c',
    messagingSenderId: '951071308757',
    projectId: 'notes-7b0f3',
    authDomain: 'notes-7b0f3.firebaseapp.com',
    storageBucket: 'notes-7b0f3.appspot.com',
    measurementId: 'G-R6PYMBDCD3',
  );

}