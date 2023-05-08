import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'itens_pedido_record.g.dart';

abstract class ItensPedidoRecord
    implements Built<ItensPedidoRecord, ItensPedidoRecordBuilder> {
  static Serializer<ItensPedidoRecord> get serializer =>
      _$itensPedidoRecordSerializer;

  DocumentReference? get produto;

  double? get subtotal;

  int? get quantidade;

  @BuiltValueField(wireName: 'criado_em')
  DateTime? get criadoEm;

  @BuiltValueField(wireName: 'id_user')
  int? get idUser;

  @BuiltValueField(wireName: 'status_carrinho')
  String? get statusCarrinho;

  @BuiltValueField(wireName: 'id_negocio')
  int? get idNegocio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItensPedidoRecordBuilder builder) => builder
    ..subtotal = 0.0
    ..quantidade = 0
    ..idUser = 0
    ..statusCarrinho = ''
    ..idNegocio = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itens_pedido');

  static Stream<ItensPedidoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItensPedidoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItensPedidoRecord._();
  factory ItensPedidoRecord([void Function(ItensPedidoRecordBuilder) updates]) =
      _$ItensPedidoRecord;

  static ItensPedidoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItensPedidoRecordData({
  DocumentReference? produto,
  double? subtotal,
  int? quantidade,
  DateTime? criadoEm,
  int? idUser,
  String? statusCarrinho,
  int? idNegocio,
}) {
  final firestoreData = serializers.toFirestore(
    ItensPedidoRecord.serializer,
    ItensPedidoRecord(
      (i) => i
        ..produto = produto
        ..subtotal = subtotal
        ..quantidade = quantidade
        ..criadoEm = criadoEm
        ..idUser = idUser
        ..statusCarrinho = statusCarrinho
        ..idNegocio = idNegocio,
    ),
  );

  return firestoreData;
}
