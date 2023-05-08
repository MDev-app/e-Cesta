// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_menu_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriasMenuRecord> _$categoriasMenuRecordSerializer =
    new _$CategoriasMenuRecordSerializer();

class _$CategoriasMenuRecordSerializer
    implements StructuredSerializer<CategoriasMenuRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriasMenuRecord,
    _$CategoriasMenuRecord
  ];
  @override
  final String wireName = 'CategoriasMenuRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriasMenuRecord object,
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
    value = object.idMenu;
    if (value != null) {
      result
        ..add('id_menu')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.negociosId;
    if (value != null) {
      result
        ..add('negocios_id')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  CategoriasMenuRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriasMenuRecordBuilder();

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
        case 'id_menu':
          result.idMenu = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'negocios_id':
          result.negociosId.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$CategoriasMenuRecord extends CategoriasMenuRecord {
  @override
  final String? nome;
  @override
  final int? idMenu;
  @override
  final BuiltList<int>? negociosId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriasMenuRecord(
          [void Function(CategoriasMenuRecordBuilder)? updates]) =>
      (new CategoriasMenuRecordBuilder()..update(updates))._build();

  _$CategoriasMenuRecord._(
      {this.nome, this.idMenu, this.negociosId, this.ffRef})
      : super._();

  @override
  CategoriasMenuRecord rebuild(
          void Function(CategoriasMenuRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriasMenuRecordBuilder toBuilder() =>
      new CategoriasMenuRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriasMenuRecord &&
        nome == other.nome &&
        idMenu == other.idMenu &&
        negociosId == other.negociosId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, idMenu.hashCode);
    _$hash = $jc(_$hash, negociosId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriasMenuRecord')
          ..add('nome', nome)
          ..add('idMenu', idMenu)
          ..add('negociosId', negociosId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriasMenuRecordBuilder
    implements Builder<CategoriasMenuRecord, CategoriasMenuRecordBuilder> {
  _$CategoriasMenuRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  int? _idMenu;
  int? get idMenu => _$this._idMenu;
  set idMenu(int? idMenu) => _$this._idMenu = idMenu;

  ListBuilder<int>? _negociosId;
  ListBuilder<int> get negociosId =>
      _$this._negociosId ??= new ListBuilder<int>();
  set negociosId(ListBuilder<int>? negociosId) =>
      _$this._negociosId = negociosId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriasMenuRecordBuilder() {
    CategoriasMenuRecord._initializeBuilder(this);
  }

  CategoriasMenuRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _idMenu = $v.idMenu;
      _negociosId = $v.negociosId?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriasMenuRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriasMenuRecord;
  }

  @override
  void update(void Function(CategoriasMenuRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriasMenuRecord build() => _build();

  _$CategoriasMenuRecord _build() {
    _$CategoriasMenuRecord _$result;
    try {
      _$result = _$v ??
          new _$CategoriasMenuRecord._(
              nome: nome,
              idMenu: idMenu,
              negociosId: _negociosId?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'negociosId';
        _negociosId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoriasMenuRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
