// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PedidosRecord> _$pedidosRecordSerializer =
    new _$PedidosRecordSerializer();

class _$PedidosRecordSerializer implements StructuredSerializer<PedidosRecord> {
  @override
  final Iterable<Type> types = const [PedidosRecord, _$PedidosRecord];
  @override
  final String wireName = 'PedidosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PedidosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idPedido;
    if (value != null) {
      result
        ..add('id_pedido')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.valorTotal;
    if (value != null) {
      result
        ..add('valor_total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.itensPedido;
    if (value != null) {
      result
        ..add('itens_pedido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.dataPedido;
    if (value != null) {
      result
        ..add('data_pedido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cliente;
    if (value != null) {
      result
        ..add('cliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.statusPagamento;
    if (value != null) {
      result
        ..add('status_pagamento')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tipoPagamento;
    if (value != null) {
      result
        ..add('tipo_pagamento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusEntrega;
    if (value != null) {
      result
        ..add('status_entrega')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PedidosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PedidosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id_pedido':
          result.idPedido = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'valor_total':
          result.valorTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'itens_pedido':
          result.itensPedido.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'data_pedido':
          result.dataPedido = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cliente':
          result.cliente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'status_pagamento':
          result.statusPagamento = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tipo_pagamento':
          result.tipoPagamento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status_entrega':
          result.statusEntrega = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PedidosRecord extends PedidosRecord {
  @override
  final int? idPedido;
  @override
  final double? valorTotal;
  @override
  final BuiltList<DocumentReference<Object?>>? itensPedido;
  @override
  final DateTime? dataPedido;
  @override
  final DocumentReference<Object?>? cliente;
  @override
  final DocumentReference<Object?>? endereco;
  @override
  final bool? statusPagamento;
  @override
  final String? tipoPagamento;
  @override
  final bool? statusEntrega;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PedidosRecord([void Function(PedidosRecordBuilder)? updates]) =>
      (new PedidosRecordBuilder()..update(updates))._build();

  _$PedidosRecord._(
      {this.idPedido,
      this.valorTotal,
      this.itensPedido,
      this.dataPedido,
      this.cliente,
      this.endereco,
      this.statusPagamento,
      this.tipoPagamento,
      this.statusEntrega,
      this.ffRef})
      : super._();

  @override
  PedidosRecord rebuild(void Function(PedidosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PedidosRecordBuilder toBuilder() => new PedidosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PedidosRecord &&
        idPedido == other.idPedido &&
        valorTotal == other.valorTotal &&
        itensPedido == other.itensPedido &&
        dataPedido == other.dataPedido &&
        cliente == other.cliente &&
        endereco == other.endereco &&
        statusPagamento == other.statusPagamento &&
        tipoPagamento == other.tipoPagamento &&
        statusEntrega == other.statusEntrega &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idPedido.hashCode);
    _$hash = $jc(_$hash, valorTotal.hashCode);
    _$hash = $jc(_$hash, itensPedido.hashCode);
    _$hash = $jc(_$hash, dataPedido.hashCode);
    _$hash = $jc(_$hash, cliente.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, statusPagamento.hashCode);
    _$hash = $jc(_$hash, tipoPagamento.hashCode);
    _$hash = $jc(_$hash, statusEntrega.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PedidosRecord')
          ..add('idPedido', idPedido)
          ..add('valorTotal', valorTotal)
          ..add('itensPedido', itensPedido)
          ..add('dataPedido', dataPedido)
          ..add('cliente', cliente)
          ..add('endereco', endereco)
          ..add('statusPagamento', statusPagamento)
          ..add('tipoPagamento', tipoPagamento)
          ..add('statusEntrega', statusEntrega)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PedidosRecordBuilder
    implements Builder<PedidosRecord, PedidosRecordBuilder> {
  _$PedidosRecord? _$v;

  int? _idPedido;
  int? get idPedido => _$this._idPedido;
  set idPedido(int? idPedido) => _$this._idPedido = idPedido;

  double? _valorTotal;
  double? get valorTotal => _$this._valorTotal;
  set valorTotal(double? valorTotal) => _$this._valorTotal = valorTotal;

  ListBuilder<DocumentReference<Object?>>? _itensPedido;
  ListBuilder<DocumentReference<Object?>> get itensPedido =>
      _$this._itensPedido ??= new ListBuilder<DocumentReference<Object?>>();
  set itensPedido(ListBuilder<DocumentReference<Object?>>? itensPedido) =>
      _$this._itensPedido = itensPedido;

  DateTime? _dataPedido;
  DateTime? get dataPedido => _$this._dataPedido;
  set dataPedido(DateTime? dataPedido) => _$this._dataPedido = dataPedido;

  DocumentReference<Object?>? _cliente;
  DocumentReference<Object?>? get cliente => _$this._cliente;
  set cliente(DocumentReference<Object?>? cliente) => _$this._cliente = cliente;

  DocumentReference<Object?>? _endereco;
  DocumentReference<Object?>? get endereco => _$this._endereco;
  set endereco(DocumentReference<Object?>? endereco) =>
      _$this._endereco = endereco;

  bool? _statusPagamento;
  bool? get statusPagamento => _$this._statusPagamento;
  set statusPagamento(bool? statusPagamento) =>
      _$this._statusPagamento = statusPagamento;

  String? _tipoPagamento;
  String? get tipoPagamento => _$this._tipoPagamento;
  set tipoPagamento(String? tipoPagamento) =>
      _$this._tipoPagamento = tipoPagamento;

  bool? _statusEntrega;
  bool? get statusEntrega => _$this._statusEntrega;
  set statusEntrega(bool? statusEntrega) =>
      _$this._statusEntrega = statusEntrega;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PedidosRecordBuilder() {
    PedidosRecord._initializeBuilder(this);
  }

  PedidosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idPedido = $v.idPedido;
      _valorTotal = $v.valorTotal;
      _itensPedido = $v.itensPedido?.toBuilder();
      _dataPedido = $v.dataPedido;
      _cliente = $v.cliente;
      _endereco = $v.endereco;
      _statusPagamento = $v.statusPagamento;
      _tipoPagamento = $v.tipoPagamento;
      _statusEntrega = $v.statusEntrega;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PedidosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PedidosRecord;
  }

  @override
  void update(void Function(PedidosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PedidosRecord build() => _build();

  _$PedidosRecord _build() {
    _$PedidosRecord _$result;
    try {
      _$result = _$v ??
          new _$PedidosRecord._(
              idPedido: idPedido,
              valorTotal: valorTotal,
              itensPedido: _itensPedido?.build(),
              dataPedido: dataPedido,
              cliente: cliente,
              endereco: endereco,
              statusPagamento: statusPagamento,
              tipoPagamento: tipoPagamento,
              statusEntrega: statusEntrega,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'itensPedido';
        _itensPedido?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PedidosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
