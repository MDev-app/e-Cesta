// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipos_negocios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TiposNegociosRecord> _$tiposNegociosRecordSerializer =
    new _$TiposNegociosRecordSerializer();

class _$TiposNegociosRecordSerializer
    implements StructuredSerializer<TiposNegociosRecord> {
  @override
  final Iterable<Type> types = const [
    TiposNegociosRecord,
    _$TiposNegociosRecord
  ];
  @override
  final String wireName = 'TiposNegociosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TiposNegociosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idTipos;
    if (value != null) {
      result
        ..add('id_tipos')
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
  TiposNegociosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TiposNegociosRecordBuilder();

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
        case 'id_tipos':
          result.idTipos = serializers.deserialize(value,
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

class _$TiposNegociosRecord extends TiposNegociosRecord {
  @override
  final String? nome;
  @override
  final int? idTipos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TiposNegociosRecord(
          [void Function(TiposNegociosRecordBuilder)? updates]) =>
      (new TiposNegociosRecordBuilder()..update(updates))._build();

  _$TiposNegociosRecord._({this.nome, this.idTipos, this.ffRef}) : super._();

  @override
  TiposNegociosRecord rebuild(
          void Function(TiposNegociosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TiposNegociosRecordBuilder toBuilder() =>
      new TiposNegociosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TiposNegociosRecord &&
        nome == other.nome &&
        idTipos == other.idTipos &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, idTipos.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TiposNegociosRecord')
          ..add('nome', nome)
          ..add('idTipos', idTipos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TiposNegociosRecordBuilder
    implements Builder<TiposNegociosRecord, TiposNegociosRecordBuilder> {
  _$TiposNegociosRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  int? _idTipos;
  int? get idTipos => _$this._idTipos;
  set idTipos(int? idTipos) => _$this._idTipos = idTipos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TiposNegociosRecordBuilder() {
    TiposNegociosRecord._initializeBuilder(this);
  }

  TiposNegociosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _idTipos = $v.idTipos;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TiposNegociosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TiposNegociosRecord;
  }

  @override
  void update(void Function(TiposNegociosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TiposNegociosRecord build() => _build();

  _$TiposNegociosRecord _build() {
    final _$result = _$v ??
        new _$TiposNegociosRecord._(nome: nome, idTipos: idTipos, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
