import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tipos_negocios_record.g.dart';

abstract class TiposNegociosRecord
    implements Built<TiposNegociosRecord, TiposNegociosRecordBuilder> {
  static Serializer<TiposNegociosRecord> get serializer =>
      _$tiposNegociosRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: 'id_tipos')
  int? get idTipos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TiposNegociosRecordBuilder builder) => builder
    ..nome = ''
    ..idTipos = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipos_negocios');

  static Stream<TiposNegociosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TiposNegociosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TiposNegociosRecord._();
  factory TiposNegociosRecord(
          [void Function(TiposNegociosRecordBuilder) updates]) =
      _$TiposNegociosRecord;

  static TiposNegociosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTiposNegociosRecordData({
  String? nome,
  int? idTipos,
}) {
  final firestoreData = serializers.toFirestore(
    TiposNegociosRecord.serializer,
    TiposNegociosRecord(
      (t) => t
        ..nome = nome
        ..idTipos = idTipos,
    ),
  );

  return firestoreData;
}
