import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBB_VcWTFKhu2iGObGpHOV8ttSn4skmSkg",
            authDomain: "to-do-c2gean.firebaseapp.com",
            projectId: "to-do-c2gean",
            storageBucket: "to-do-c2gean.firebasestorage.app",
            messagingSenderId: "564907665226",
            appId: "1:564907665226:web:39ecef73c205579b5f03b3"));
  } else {
    await Firebase.initializeApp();
  }
}
