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
    apiKey: 'AIzaSyB2xxwTMBSOdQwVClmu_w3ScSH4WX9BBxw',
    appId: '1:331139649234:web:001282b68580562239e70b',
    messagingSenderId: '331139649234',
    projectId: 'sphurti-dit',
    authDomain: 'sphurti-dit.firebaseapp.com',
    storageBucket: 'sphurti-dit.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdCtVxIN0eY8OjmYAdMU3zsuPr0eoHMHE',
    appId: '1:331139649234:android:a643c9c5b14c23d339e70b',
    messagingSenderId: '331139649234',
    projectId: 'sphurti-dit',
    storageBucket: 'sphurti-dit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1NrXHT7g5bdAFI1_1OM7-_hwlVONVEkc',
    appId: '1:331139649234:ios:0d3b8c37f0fca36d39e70b',
    messagingSenderId: '331139649234',
    projectId: 'sphurti-dit',
    storageBucket: 'sphurti-dit.appspot.com',
    iosClientId: '331139649234-afc9aaji39d9bmqa05rgpo84h0irrr8c.apps.googleusercontent.com',
    iosBundleId: 'com.example.sphurtiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA1NrXHT7g5bdAFI1_1OM7-_hwlVONVEkc',
    appId: '1:331139649234:ios:0d3b8c37f0fca36d39e70b',
    messagingSenderId: '331139649234',
    projectId: 'sphurti-dit',
    storageBucket: 'sphurti-dit.appspot.com',
    iosClientId: '331139649234-afc9aaji39d9bmqa05rgpo84h0irrr8c.apps.googleusercontent.com',
    iosBundleId: 'com.example.sphurtiApp',
  );
}
