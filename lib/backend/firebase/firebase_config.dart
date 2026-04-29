import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD1Y6e8IBgH0RyfVZ1gAPdNRnvSuezM9uc",
            authDomain: "be-healthy-6gl9ay.firebaseapp.com",
            projectId: "be-healthy-6gl9ay",
            storageBucket: "be-healthy-6gl9ay.firebasestorage.app",
            messagingSenderId: "105481139375",
            appId: "1:105481139375:web:947e9875824c3ac21fd05a",
            measurementId: "G-MCQVYL0QRQ"));
  } else {
    await Firebase.initializeApp();
  }
}
