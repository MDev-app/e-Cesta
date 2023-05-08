// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enderecos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnderecosRecord> _$enderecosRecordSerializer =
    new _$EnderecosRecordSerializer();

class _$EnderecosRecordSerializer
    implements StructuredSerializer<EnderecosRecord> {
  @override
  final Iterable<Type> types = const [EnderecosRecord, _$EnderecosRecord];
  @override
  final String wireName = 'EnderecosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnderecosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'endereco',
      serializers.serialize(object.endereco,
          specifiedType: const FullType(EnderecoStruct)),
    ];
    Object? value;
    value = object.nomeApelido;
    if (value != null) {
      result
        ..add('nome_apelido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idUser;
    if (value != null) {
      result
        ..add('id_user')
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
  EnderecosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnderecosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome_apelido':
          result.nomeApelido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_user':
          result.idUser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'endereco':
          result.endereco.replace(serializers.deserialize(value,
                  specifiedType: const FullType(EnderecoStruct))!
              as EnderecoStruct);
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

class _$EnderecosRecord extends EnderecosRecord {
  @override
  final String? nomeApelido;
  @override
  final int? idUser;
  @override
  final EnderecoStruct endereco;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnderecosRecord([void Function(EnderecosRecordBuilder)? updates]) =>
      (new EnderecosRecordBuilder()..update(updates))._build();

  _$EnderecosRecord._(
      {this.nomeApelido, this.idUser, required this.endereco, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endereco, r'EnderecosRecord', 'endereco');
  }

  @override
  EnderecosRecord rebuild(void Function(EnderecosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnderecosRecordBuilder toBuilder() =>
      new EnderecosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnderecosRecord &&
        nomeApelido == other.nomeApelido &&
        idUser == other.idUser &&
        endereco == other.endereco &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nomeApelido.hashCode);
    _$hash = $jc(_$hash, idUser.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnderecosRecord')
          ..add('nomeApelido', nomeApelido)
          ..add('idUser', idUser)
          ..add('endereco', endereco)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnderecosRecordBuilder
    implements Builder<EnderecosRecord, EnderecosRecordBuilder> {
  _$EnderecosRecord? _$v;

  String? _nomeApelido;
  String? get nomeApelido => _$this._nomeApelido;
  set nomeApelido(String? nomeApelido) => _$this._nomeApelido = nomeApelido;

  int? _idUser;
  int? get idUser => _$this._idUser;
  set idUser(int? idUser) => _$this._idUser = idUser;

  EnderecoStructBuilder? _endereco;
  EnderecoStructBuilder get endereco =>
      _$this._endereco ??= new EnderecoStructBuilder();
  set endereco(EnderecoStructBuilder? endereco) => _$this._endereco = endereco;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnderecosRecordBuilder() {
    EnderecosRecord._initializeBuilder(this);
  }

  EnderecosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomeApelido = $v.nomeApelido;
      _idUser = $v.idUser;
      _endereco = $v.endereco.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnderecosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnderecosRecord;
  }

  @override
  void update(void Function(EnderecosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnderecosRecord build() => _build();

  _$EnderecosRecord _build() {
    _$EnderecosRecord _$result;
    try {
      _$result = _$v ??
          new _$EnderecosRecord._(
              nomeApelido: nomeApelido,
              idUser: idUser,
              endereco: endereco.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endereco';
        endereco.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnderecosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
