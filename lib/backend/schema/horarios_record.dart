import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'horarios_record.g.dart';

abstract class HorariosRecord
    implements Built<HorariosRecord, HorariosRecordBuilder> {
  static Serializer<HorariosRecord> get serializer =>
      _$horariosRecordSerializer;

  String? get dia;

  String? get horas;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(HorariosRecordBuilder builder) => builder
    ..dia = ''
    ..horas = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('horarios')
          : FirebaseFirestore.instance.collectionGroup('horarios');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('horarios').doc();

  static Stream<HorariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HorariosRecord._();
  factory HorariosRecord([void Function(HorariosRecordBuilder) updates]) =
      _$HorariosRecord;

  static HorariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHorariosRecordData({
  String? dia,
  String? horas,
}) {
  final firestoreData = serializers.toFirestore(
    HorariosRecord.serializer,
    HorariosRecord(
      (h) => h
        ..dia = dia
        ..horas = horas,
    ),
  );

  return firestoreData;
}
