import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categorias_menu_record.g.dart';

abstract class CategoriasMenuRecord
    implements Built<CategoriasMenuRecord, CategoriasMenuRecordBuilder> {
  static Serializer<CategoriasMenuRecord> get serializer =>
      _$categoriasMenuRecordSerializer;

  String? get nome;

  @BuiltValueField(wireName: 'id_menu')
  int? get idMenu;

  @BuiltValueField(wireName: 'negocios_id')
  BuiltList<int>? get negociosId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriasMenuRecordBuilder builder) => builder
    ..nome = ''
    ..idMenu = 0
    ..negociosId = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias_menu');

  static Stream<CategoriasMenuRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriasMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriasMenuRecord._();
  factory CategoriasMenuRecord(
          [void Function(CategoriasMenuRecordBuilder) updates]) =
      _$CategoriasMenuRecord;

  static CategoriasMenuRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriasMenuRecordData({
  String? nome,
  int? idMenu,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriasMenuRecord.serializer,
    CategoriasMenuRecord(
      (c) => c
        ..nome = nome
        ..idMenu = idMenu
        ..negociosId = null,
    ),
  );

  return firestoreData;
}
