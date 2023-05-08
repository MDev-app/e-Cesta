import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'negocio_record.g.dart';

abstract class NegocioRecord
    implements Built<NegocioRecord, NegocioRecordBuilder> {
  static Serializer<NegocioRecord> get serializer => _$negocioRecordSerializer;

  String? get nome;

  String? get descricao;

  String? get logo;

  @BuiltValueField(wireName: 'imagem_capa')
  String? get imagemCapa;

  @BuiltValueField(wireName: 'taxa_entrega')
  double? get taxaEntrega;

  @BuiltValueField(wireName: 'tempo_entrega')
  String? get tempoEntrega;

  @BuiltValueField(wireName: 'id_negocio')
  int? get idNegocio;

  @BuiltValueField(wireName: 'dono_negocio')
  DocumentReference? get donoNegocio;

  @BuiltValueField(wireName: 'tipos_negocios')
  BuiltList<String>? get tiposNegocios;

  EnderecoStruct get endereco;

  LatLng? get posicao;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NegocioRecordBuilder builder) => builder
    ..nome = ''
    ..descricao = ''
    ..logo = ''
    ..imagemCapa = ''
    ..taxaEntrega = 0.0
    ..tempoEntrega = ''
    ..idNegocio = 0
    ..tiposNegocios = ListBuilder()
    ..endereco = EnderecoStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('negocio');

  static Stream<NegocioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NegocioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NegocioRecord._();
  factory NegocioRecord([void Function(NegocioRecordBuilder) updates]) =
      _$NegocioRecord;

  static NegocioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNegocioRecordData({
  String? nome,
  String? descricao,
  String? logo,
  String? imagemCapa,
  double? taxaEntrega,
  String? tempoEntrega,
  int? idNegocio,
  DocumentReference? donoNegocio,
  EnderecoStruct? endereco,
  LatLng? posicao,
}) {
  final firestoreData = serializers.toFirestore(
    NegocioRecord.serializer,
    NegocioRecord(
      (n) => n
        ..nome = nome
        ..descricao = descricao
        ..logo = logo
        ..imagemCapa = imagemCapa
        ..taxaEntrega = taxaEntrega
        ..tempoEntrega = tempoEntrega
        ..idNegocio = idNegocio
        ..donoNegocio = donoNegocio
        ..tiposNegocios = null
        ..endereco = EnderecoStructBuilder()
        ..posicao = posicao,
    ),
  );

  // Handle nested data for "endereco" field.
  addEnderecoStructData(firestoreData, endereco, 'endereco');

  return firestoreData;
}
