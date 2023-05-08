import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDKUjpcN9X_3jnk5mTfag7YH2RykNcUKqY",
            authDomain: "e-cestagro.firebaseapp.com",
            projectId: "e-cestagro",
            storageBucket: "e-cestagro.appspot.com",
            messagingSenderId: "831241564349",
            appId: "1:831241564349:web:802c430ee04367148647d4"));
  } else {
    await Firebase.initializeApp();
  }
}
