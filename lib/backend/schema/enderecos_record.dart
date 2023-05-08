import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enderecos_record.g.dart';

abstract class EnderecosRecord
    implements Built<EnderecosRecord, EnderecosRecordBuilder> {
  static Serializer<EnderecosRecord> get serializer =>
      _$enderecosRecordSerializer;

  @BuiltValueField(wireName: 'nome_apelido')
  String? get nomeApelido;

  @BuiltValueField(wireName: 'id_user')
  int? get idUser;

  EnderecoStruct get endereco;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnderecosRecordBuilder builder) => builder
    ..nomeApelido = ''
    ..idUser = 0
    ..endereco = EnderecoStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enderecos');

  static Stream<EnderecosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnderecosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnderecosRecord._();
  factory EnderecosRecord([void Function(EnderecosRecordBuilder) updates]) =
      _$EnderecosRecord;

  static EnderecosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnderecosRecordData({
  String? nomeApelido,
  int? idUser,
  EnderecoStruct? endereco,
}) {
  final firestoreData = serializers.toFirestore(
    EnderecosRecord.serializer,
    EnderecosRecord(
      (e) => e
        ..nomeApelido = nomeApelido
        ..idUser = idUser
        ..endereco = EnderecoStructBuilder(),
    ),
  );

  // Handle nested data for "endereco" field.
  addEnderecoStructData(firestoreData, endereco, 'endereco');

  return firestoreData;
}
