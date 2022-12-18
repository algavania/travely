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
    apiKey: 'AIzaSyDwaqHMzTQx4ofKxxpOaRjzwvzbMuPqofI',
    appId: '1:769579196182:web:33062b9747951133ad7a37',
    messagingSenderId: '769579196182',
    projectId: 'travely-d9651',
    authDomain: 'travely-d9651.firebaseapp.com',
    storageBucket: 'travely-d9651.appspot.com',
    measurementId: 'G-RNBFG8L98L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARb1Xk0NF_7CbdxfN8svdvyZRsUV_H4Sk',
    appId: '1:769579196182:android:00e069e02b9cb6c5ad7a37',
    messagingSenderId: '769579196182',
    projectId: 'travely-d9651',
    storageBucket: 'travely-d9651.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_4ut-rHUQglDPsZdsYhkhZQBuOIs99lI',
    appId: '1:769579196182:ios:bb0c7f9f3e4fb2e7ad7a37',
    messagingSenderId: '769579196182',
    projectId: 'travely-d9651',
    storageBucket: 'travely-d9651.appspot.com',
    iosClientId: '769579196182-s1qo97193anijqsdluhhrsqlvc334g1i.apps.googleusercontent.com',
    iosBundleId: 'com.ecode.travely',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_4ut-rHUQglDPsZdsYhkhZQBuOIs99lI',
    appId: '1:769579196182:ios:bb0c7f9f3e4fb2e7ad7a37',
    messagingSenderId: '769579196182',
    projectId: 'travely-d9651',
    storageBucket: 'travely-d9651.appspot.com',
    iosClientId: '769579196182-s1qo97193anijqsdluhhrsqlvc334g1i.apps.googleusercontent.com',
    iosBundleId: 'com.ecode.travely',
  );
}
