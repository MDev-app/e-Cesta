// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';

Future deleteDocs(
  String collectionName,
  String fildName,
  int dataName,
  String fildName2,
  String dataName2,
) async {
  // Add your function code here!
  WriteBatch batch = FirebaseFirestore.instance.batch();
  FirebaseFirestore.instance
      .collection(collectionName)
      .where(fildName, isEqualTo: dataName)
      .where(fildName2, isEqualTo: dataName2)
      .get()
      .then((querySnapshot) {
    querySnapshot.docs.forEach((document) {
      batch.delete(document.reference);
    });

    return batch.commit();
  });
}
