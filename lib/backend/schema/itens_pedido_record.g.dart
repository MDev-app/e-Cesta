// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itens_pedido_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItensPedidoRecord> _$itensPedidoRecordSerializer =
    new _$ItensPedidoRecordSerializer();

class _$ItensPedidoRecordSerializer
    implements StructuredSerializer<ItensPedidoRecord> {
  @override
  final Iterable<Type> types = const [ItensPedidoRecord, _$ItensPedidoRecord];
  @override
  final String wireName = 'ItensPedidoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItensPedidoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.produto;
    if (value != null) {
      result
        ..add('produto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantidade;
    if (value != null) {
      result
        ..add('quantidade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.criadoEm;
    if (value != null) {
      result
        ..add('criado_em')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.idUser;
    if (value != null) {
      result
        ..add('id_user')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.statusCarrinho;
    if (value != null) {
      result
        ..add('status_carrinho')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idNegocio;
    if (value != null) {
      result
        ..add('id_negocio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ItensPedidoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItensPedidoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'produto':
          result.produto = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantidade':
          result.quantidade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'criado_em':
          result.criadoEm = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'id_user':
          result.idUser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status_carrinho':
          result.statusCarrinho = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_negocio':
          result.idNegocio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ItensPedidoRecord extends ItensPedidoRecord {
  @override
  final DocumentReference<Object?>? produto;
  @override
  final double? subtotal;
  @override
  final int? quantidade;
  @override
  final DateTime? criadoEm;
  @override
  final int? idUser;
  @override
  final String? statusCarrinho;
  @override
  final int? idNegocio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItensPedidoRecord(
          [void Function(ItensPedidoRecordBuilder)? updates]) =>
      (new ItensPedidoRecordBuilder()..update(updates))._build();

  _$ItensPedidoRecord._(
      {this.produto,
      this.subtotal,
      this.quantidade,
      this.criadoEm,
      this.idUser,
      this.statusCarrinho,
      this.idNegocio,
      this.ffRef})
      : super._();

  @override
  ItensPedidoRecord rebuild(void Function(ItensPedidoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItensPedidoRecordBuilder toBuilder() =>
      new ItensPedidoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItensPedidoRecord &&
        produto == other.produto &&
        subtotal == other.subtotal &&
        quantidade == other.quantidade &&
        criadoEm == other.criadoEm &&
        idUser == other.idUser &&
        statusCarrinho == other.statusCarrinho &&
        idNegocio == other.idNegocio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, produto.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, quantidade.hashCode);
    _$hash = $jc(_$hash, criadoEm.hashCode);
    _$hash = $jc(_$hash, idUser.hashCode);
    _$hash = $jc(_$hash, statusCarrinho.hashCode);
    _$hash = $jc(_$hash, idNegocio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItensPedidoRecord')
          ..add('produto', produto)
          ..add('subtotal', subtotal)
          ..add('quantidade', quantidade)
          ..add('criadoEm', criadoEm)
          ..add('idUser', idUser)
          ..add('statusCarrinho', statusCarrinho)
          ..add('idNegocio', idNegocio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItensPedidoRecordBuilder
    implements Builder<ItensPedidoRecord, ItensPedidoRecordBuilder> {
  _$ItensPedidoRecord? _$v;

  DocumentReference<Object?>? _produto;
  DocumentReference<Object?>? get produto => _$this._produto;
  set produto(DocumentReference<Object?>? produto) => _$this._produto = produto;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  int? _quantidade;
  int? get quantidade => _$this._quantidade;
  set quantidade(int? quantidade) => _$this._quantidade = quantidade;

  DateTime? _criadoEm;
  DateTime? get criadoEm => _$this._criadoEm;
  set criadoEm(DateTime? criadoEm) => _$this._criadoEm = criadoEm;

  int? _idUser;
  int? get idUser => _$this._idUser;
  set idUser(int? idUser) => _$this._idUser = idUser;

  String? _statusCarrinho;
  String? get statusCarrinho => _$this._statusCarrinho;
  set statusCarrinho(String? statusCarrinho) =>
      _$this._statusCarrinho = statusCarrinho;

  int? _idNegocio;
  int? get idNegocio => _$this._idNegocio;
  set idNegocio(int? idNegocio) => _$this._idNegocio = idNegocio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItensPedidoRecordBuilder() {
    ItensPedidoRecord._initializeBuilder(this);
  }

  ItensPedidoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _produto = $v.produto;
      _subtotal = $v.subtotal;
      _quantidade = $v.quantidade;
      _criadoEm = $v.criadoEm;
      _idUser = $v.idUser;
      _statusCarrinho = $v.statusCarrinho;
      _idNegocio = $v.idNegocio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItensPedidoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItensPedidoRecord;
  }

  @override
  void update(void Function(ItensPedidoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItensPedidoRecord build() => _build();

  _$ItensPedidoRecord _build() {
    final _$result = _$v ??
        new _$ItensPedidoRecord._(
            produto: produto,
            subtotal: subtotal,
            quantidade: quantidade,
            criadoEm: criadoEm,
            idUser: idUser,
            statusCarrinho: statusCarrinho,
            idNegocio: idNegocio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
