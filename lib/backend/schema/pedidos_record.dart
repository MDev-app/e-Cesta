import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedidos_record.g.dart';

abstract class PedidosRecord
    implements Built<PedidosRecord, PedidosRecordBuilder> {
  static Serializer<PedidosRecord> get serializer => _$pedidosRecordSerializer;

  @BuiltValueField(wireName: 'id_pedido')
  int? get idPedido;

  @BuiltValueField(wireName: 'valor_total')
  double? get valorTotal;

  @BuiltValueField(wireName: 'itens_pedido')
  BuiltList<DocumentReference>? get itensPedido;

  @BuiltValueField(wireName: 'data_pedido')
  DateTime? get dataPedido;

  DocumentReference? get cliente;

  DocumentReference? get endereco;

  @BuiltValueField(wireName: 'status_pagamento')
  bool? get statusPagamento;

  @BuiltValueField(wireName: 'tipo_pagamento')
  String? get tipoPagamento;

  @BuiltValueField(wireName: 'status_entrega')
  bool? get statusEntrega;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PedidosRecordBuilder builder) => builder
    ..idPedido = 0
    ..valorTotal = 0.0
    ..itensPedido = ListBuilder()
    ..statusPagamento = false
    ..tipoPagamento = ''
    ..statusEntrega = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PedidosRecord._();
  factory PedidosRecord([void Function(PedidosRecordBuilder) updates]) =
      _$PedidosRecord;

  static PedidosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPedidosRecordData({
  int? idPedido,
  double? valorTotal,
  DateTime? dataPedido,
  DocumentReference? cliente,
  DocumentReference? endereco,
  bool? statusPagamento,
  String? tipoPagamento,
  bool? statusEntrega,
}) {
  final firestoreData = serializers.toFirestore(
    PedidosRecord.serializer,
    PedidosRecord(
      (p) => p
        ..idPedido = idPedido
        ..valorTotal = valorTotal
        ..itensPedido = null
        ..dataPedido = dataPedido
        ..cliente = cliente
        ..endereco = endereco
        ..statusPagamento = statusPagamento
        ..tipoPagamento = tipoPagamento
        ..statusEntrega = statusEntrega,
    ),
  );

  return firestoreData;
}
