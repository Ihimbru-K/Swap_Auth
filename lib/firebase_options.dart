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
    apiKey: 'AIzaSyAPojJ87HwDS9dOmYGQ3KNVH4nkE5zyPCk',
    appId: '1:220902661677:web:37c326930658327042e2a4',
    messagingSenderId: '220902661677',
    projectId: 'authapp-f8c7e',
    authDomain: 'authapp-f8c7e.firebaseapp.com',
    storageBucket: 'authapp-f8c7e.appspot.com',
    measurementId: 'G-7ZN1B7PHXB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdF7dNOjvfGK2LNB857PY5vFma-67AaL4',
    appId: '1:220902661677:android:8354abf31164806d42e2a4',
    messagingSenderId: '220902661677',
    projectId: 'authapp-f8c7e',
    storageBucket: 'authapp-f8c7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClpqO0nFM2Vebu1G5FzE6G8yDfbUfMChM',
    appId: '1:220902661677:ios:ae8552630f022dba42e2a4',
    messagingSenderId: '220902661677',
    projectId: 'authapp-f8c7e',
    storageBucket: 'authapp-f8c7e.appspot.com',
    iosClientId: '220902661677-g8h7mh2b6fsficbltjngrn4p260vfjcj.apps.googleusercontent.com',
    iosBundleId: 'com.example.expatSwaps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClpqO0nFM2Vebu1G5FzE6G8yDfbUfMChM',
    appId: '1:220902661677:ios:cd7e49982ae4bce442e2a4',
    messagingSenderId: '220902661677',
    projectId: 'authapp-f8c7e',
    storageBucket: 'authapp-f8c7e.appspot.com',
    iosClientId: '220902661677-ulhphjp6t8u66i5g8eq781smq50db5rg.apps.googleusercontent.com',
    iosBundleId: 'com.example.expatSwaps.RunnerTests',
  );
}