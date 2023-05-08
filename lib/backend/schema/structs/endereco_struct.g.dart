// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnderecoStruct> _$enderecoStructSerializer =
    new _$EnderecoStructSerializer();

class _$EnderecoStructSerializer
    implements StructuredSerializer<EnderecoStruct> {
  @override
  final Iterable<Type> types = const [EnderecoStruct, _$EnderecoStruct];
  @override
  final String wireName = 'EnderecoStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnderecoStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.cep;
    if (value != null) {
      result
        ..add('cep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rua;
    if (value != null) {
      result
        ..add('rua')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bairro;
    if (value != null) {
      result
        ..add('bairro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numero;
    if (value != null) {
      result
        ..add('numero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cidade;
    if (value != null) {
      result
        ..add('cidade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complemento;
    if (value != null) {
      result
        ..add('complemento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EnderecoStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnderecoStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cep':
          result.cep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rua':
          result.rua = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bairro':
          result.bairro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numero':
          result.numero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cidade':
          result.cidade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complemento':
          result.complemento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$EnderecoStruct extends EnderecoStruct {
  @override
  final String? cep;
  @override
  final String? rua;
  @override
  final String? bairro;
  @override
  final String? numero;
  @override
  final String? cidade;
  @override
  final String? estado;
  @override
  final String? complemento;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$EnderecoStruct([void Function(EnderecoStructBuilder)? updates]) =>
      (new EnderecoStructBuilder()..update(updates))._build();

  _$EnderecoStruct._(
      {this.cep,
      this.rua,
      this.bairro,
      this.numero,
      this.cidade,
      this.estado,
      this.complemento,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'EnderecoStruct', 'firestoreUtilData');
  }

  @override
  EnderecoStruct rebuild(void Function(EnderecoStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnderecoStructBuilder toBuilder() =>
      new EnderecoStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnderecoStruct &&
        cep == other.cep &&
        rua == other.rua &&
        bairro == other.bairro &&
        numero == other.numero &&
        cidade == other.cidade &&
        estado == other.estado &&
        complemento == other.complemento &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cep.hashCode);
    _$hash = $jc(_$hash, rua.hashCode);
    _$hash = $jc(_$hash, bairro.hashCode);
    _$hash = $jc(_$hash, numero.hashCode);
    _$hash = $jc(_$hash, cidade.hashCode);
    _$hash = $jc(_$hash, estado.hashCode);
    _$hash = $jc(_$hash, complemento.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnderecoStruct')
          ..add('cep', cep)
          ..add('rua', rua)
          ..add('bairro', bairro)
          ..add('numero', numero)
          ..add('cidade', cidade)
          ..add('estado', estado)
          ..add('complemento', complemento)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class EnderecoStructBuilder
    implements Builder<EnderecoStruct, EnderecoStructBuilder> {
  _$EnderecoStruct? _$v;

  String? _cep;
  String? get cep => _$this._cep;
  set cep(String? cep) => _$this._cep = cep;

  String? _rua;
  String? get rua => _$this._rua;
  set rua(String? rua) => _$this._rua = rua;

  String? _bairro;
  String? get bairro => _$this._bairro;
  set bairro(String? bairro) => _$this._bairro = bairro;

  String? _numero;
  String? get numero => _$this._numero;
  set numero(String? numero) => _$this._numero = numero;

  String? _cidade;
  String? get cidade => _$this._cidade;
  set cidade(String? cidade) => _$this._cidade = cidade;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  String? _complemento;
  String? get complemento => _$this._complemento;
  set complemento(String? complemento) => _$this._complemento = complemento;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  EnderecoStructBuilder() {
    EnderecoStruct._initializeBuilder(this);
  }

  EnderecoStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cep = $v.cep;
      _rua = $v.rua;
      _bairro = $v.bairro;
      _numero = $v.numero;
      _cidade = $v.cidade;
      _estado = $v.estado;
      _complemento = $v.complemento;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnderecoStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnderecoStruct;
  }

  @override
  void update(void Function(EnderecoStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnderecoStruct build() => _build();

  _$EnderecoStruct _build() {
    final _$result = _$v ??
        new _$EnderecoStruct._(
            cep: cep,
            rua: rua,
            bairro: bairro,
            numero: numero,
            cidade: cidade,
            estado: estado,
            complemento: complemento,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'EnderecoStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
