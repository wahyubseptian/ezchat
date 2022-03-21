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
    apiKey: 'AIzaSyBL0EJs9WcX5hlMj-b_jEPV4EKZ7rBWXB0',
    appId: '1:690591637821:web:b763a488a9f00650e9a554',
    messagingSenderId: '690591637821',
    projectId: 'ezchat-net',
    authDomain: 'ezchat-net.firebaseapp.com',
    storageBucket: 'ezchat-net.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe7eVpvboelI6zkknxdzE17p4B8uVrJ8I',
    appId: '1:690591637821:android:5e6c4c3c42c85e9fe9a554',
    messagingSenderId: '690591637821',
    projectId: 'ezchat-net',
    storageBucket: 'ezchat-net.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOUEdrREE13Sq1glM2qMLiatOxIChjD6I',
    appId: '1:690591637821:ios:e6aac5381d854a88e9a554',
    messagingSenderId: '690591637821',
    projectId: 'ezchat-net',
    storageBucket: 'ezchat-net.appspot.com',
    androidClientId: '690591637821-dddhkspm1ojdb774sota0e9bpujuc4cl.apps.googleusercontent.com',
    iosClientId: '690591637821-ta5o80u2q91f5h9eddh680hebqvihbd7.apps.googleusercontent.com',
    iosBundleId: 'q',
  );
}