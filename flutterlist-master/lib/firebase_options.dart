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
    apiKey: 'AIzaSyD8odUrx9F52jZCtHmJjzjHmoecYXqZxdM',
    appId: '1:103436567892:web:1be78494b090b06aa5f4c1',
    messagingSenderId: '103436567892',
    projectId: 'crud-tugas-pab2',
    authDomain: 'crud-tugas-pab2.firebaseapp.com',
    storageBucket: 'crud-tugas-pab2.appspot.com',
    measurementId: 'G-YFNJ5261CE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-s2zVbExsWAM8iqGVyKhA-OYTl2WNJjA',
    appId: '1:103436567892:android:f442ef97df858405a5f4c1',
    messagingSenderId: '103436567892',
    projectId: 'crud-tugas-pab2',
    storageBucket: 'crud-tugas-pab2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiWdqpeQ6v0mojhElbBbcNv-Ed4UgXlE0',
    appId: '1:103436567892:ios:d1de38eddddb649fa5f4c1',
    messagingSenderId: '103436567892',
    projectId: 'crud-tugas-pab2',
    storageBucket: 'crud-tugas-pab2.appspot.com',
    iosBundleId: 'com.example.flutterlist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCiWdqpeQ6v0mojhElbBbcNv-Ed4UgXlE0',
    appId: '1:103436567892:ios:d1de38eddddb649fa5f4c1',
    messagingSenderId: '103436567892',
    projectId: 'crud-tugas-pab2',
    storageBucket: 'crud-tugas-pab2.appspot.com',
    iosBundleId: 'com.example.flutterlist',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD8odUrx9F52jZCtHmJjzjHmoecYXqZxdM',
    appId: '1:103436567892:web:c5647a59b30afd84a5f4c1',
    messagingSenderId: '103436567892',
    projectId: 'crud-tugas-pab2',
    authDomain: 'crud-tugas-pab2.firebaseapp.com',
    storageBucket: 'crud-tugas-pab2.appspot.com',
    measurementId: 'G-6PWDE9S238',
  );
}
