// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'negocio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NegocioRecord> _$negocioRecordSerializer =
    new _$NegocioRecordSerializer();

class _$NegocioRecordSerializer implements StructuredSerializer<NegocioRecord> {
  @override
  final Iterable<Type> types = const [NegocioRecord, _$NegocioRecord];
  @override
  final String wireName = 'NegocioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NegocioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'endereco',
      serializers.serialize(object.endereco,
          specifiedType: const FullType(EnderecoStruct)),
    ];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagemCapa;
    if (value != null) {
      result
        ..add('imagem_capa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taxaEntrega;
    if (value != null) {
      result
        ..add('taxa_entrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempoEntrega;
    if (value != null) {
      result
        ..add('tempo_entrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idNegocio;
    if (value != null) {
      result
        ..add('id_negocio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donoNegocio;
    if (value != null) {
      result
        ..add('dono_negocio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tiposNegocios;
    if (value != null) {
      result
        ..add('tipos_negocios')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.posicao;
    if (value != null) {
      result
        ..add('posicao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  NegocioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NegocioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagem_capa':
          result.imagemCapa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'taxa_entrega':
          result.taxaEntrega = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tempo_entrega':
          result.tempoEntrega = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_negocio':
          result.idNegocio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dono_negocio':
          result.donoNegocio = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'tipos_negocios':
          result.tiposNegocios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'endereco':
          result.endereco.replace(serializers.deserialize(value,
                  specifiedType: const FullType(EnderecoStruct))!
              as EnderecoStruct);
          break;
        case 'posicao':
          result.posicao = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$NegocioRecord extends NegocioRecord {
  @override
  final String? nome;
  @override
  final String? descricao;
  @override
  final String? logo;
  @override
  final String? imagemCapa;
  @override
  final double? taxaEntrega;
  @override
  final String? tempoEntrega;
  @override
  final int? idNegocio;
  @override
  final DocumentReference<Object?>? donoNegocio;
  @override
  final BuiltList<String>? tiposNegocios;
  @override
  final EnderecoStruct endereco;
  @override
  final LatLng? posicao;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NegocioRecord([void Function(NegocioRecordBuilder)? updates]) =>
      (new NegocioRecordBuilder()..update(updates))._build();

  _$NegocioRecord._(
      {this.nome,
      this.descricao,
      this.logo,
      this.imagemCapa,
      this.taxaEntrega,
      this.tempoEntrega,
      this.idNegocio,
      this.donoNegocio,
      this.tiposNegocios,
      required this.endereco,
      this.posicao,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endereco, r'NegocioRecord', 'endereco');
  }

  @override
  NegocioRecord rebuild(void Function(NegocioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NegocioRecordBuilder toBuilder() => new NegocioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NegocioRecord &&
        nome == other.nome &&
        descricao == other.descricao &&
        logo == other.logo &&
        imagemCapa == other.imagemCapa &&
        taxaEntrega == other.taxaEntrega &&
        tempoEntrega == other.tempoEntrega &&
        idNegocio == other.idNegocio &&
        donoNegocio == other.donoNegocio &&
        tiposNegocios == other.tiposNegocios &&
        endereco == other.endereco &&
        posicao == other.posicao &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, imagemCapa.hashCode);
    _$hash = $jc(_$hash, taxaEntrega.hashCode);
    _$hash = $jc(_$hash, tempoEntrega.hashCode);
    _$hash = $jc(_$hash, idNegocio.hashCode);
    _$hash = $jc(_$hash, donoNegocio.hashCode);
    _$hash = $jc(_$hash, tiposNegocios.hashCode);
    _$hash = $jc(_$hash, endereco.hashCode);
    _$hash = $jc(_$hash, posicao.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NegocioRecord')
          ..add('nome', nome)
          ..add('descricao', descricao)
          ..add('logo', logo)
          ..add('imagemCapa', imagemCapa)
          ..add('taxaEntrega', taxaEntrega)
          ..add('tempoEntrega', tempoEntrega)
          ..add('idNegocio', idNegocio)
          ..add('donoNegocio', donoNegocio)
          ..add('tiposNegocios', tiposNegocios)
          ..add('endereco', endereco)
          ..add('posicao', posicao)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NegocioRecordBuilder
    implements Builder<NegocioRecord, NegocioRecordBuilder> {
  _$NegocioRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _imagemCapa;
  String? get imagemCapa => _$this._imagemCapa;
  set imagemCapa(String? imagemCapa) => _$this._imagemCapa = imagemCapa;

  double? _taxaEntrega;
  double? get taxaEntrega => _$this._taxaEntrega;
  set taxaEntrega(double? taxaEntrega) => _$this._taxaEntrega = taxaEntrega;

  String? _tempoEntrega;
  String? get tempoEntrega => _$this._tempoEntrega;
  set tempoEntrega(String? tempoEntrega) => _$this._tempoEntrega = tempoEntrega;

  int? _idNegocio;
  int? get idNegocio => _$this._idNegocio;
  set idNegocio(int? idNegocio) => _$this._idNegocio = idNegocio;

  DocumentReference<Object?>? _donoNegocio;
  DocumentReference<Object?>? get donoNegocio => _$this._donoNegocio;
  set donoNegocio(DocumentReference<Object?>? donoNegocio) =>
      _$this._donoNegocio = donoNegocio;

  ListBuilder<String>? _tiposNegocios;
  ListBuilder<String> get tiposNegocios =>
      _$this._tiposNegocios ??= new ListBuilder<String>();
  set tiposNegocios(ListBuilder<String>? tiposNegocios) =>
      _$this._tiposNegocios = tiposNegocios;

  EnderecoStructBuilder? _endereco;
  EnderecoStructBuilder get endereco =>
      _$this._endereco ??= new EnderecoStructBuilder();
  set endereco(EnderecoStructBuilder? endereco) => _$this._endereco = endereco;

  LatLng? _posicao;
  LatLng? get posicao => _$this._posicao;
  set posicao(LatLng? posicao) => _$this._posicao = posicao;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NegocioRecordBuilder() {
    NegocioRecord._initializeBuilder(this);
  }

  NegocioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _descricao = $v.descricao;
      _logo = $v.logo;
      _imagemCapa = $v.imagemCapa;
      _taxaEntrega = $v.taxaEntrega;
      _tempoEntrega = $v.tempoEntrega;
      _idNegocio = $v.idNegocio;
      _donoNegocio = $v.donoNegocio;
      _tiposNegocios = $v.tiposNegocios?.toBuilder();
      _endereco = $v.endereco.toBuilder();
      _posicao = $v.posicao;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NegocioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NegocioRecord;
  }

  @override
  void update(void Function(NegocioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NegocioRecord build() => _build();

  _$NegocioRecord _build() {
    _$NegocioRecord _$result;
    try {
      _$result = _$v ??
          new _$NegocioRecord._(
              nome: nome,
              descricao: descricao,
              logo: logo,
              imagemCapa: imagemCapa,
              taxaEntrega: taxaEntrega,
              tempoEntrega: tempoEntrega,
              idNegocio: idNegocio,
              donoNegocio: donoNegocio,
              tiposNegocios: _tiposNegocios?.build(),
              endereco: endereco.build(),
              posicao: posicao,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tiposNegocios';
        _tiposNegocios?.build();
        _$failedField = 'endereco';
        endereco.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NegocioRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
