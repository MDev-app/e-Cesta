// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HorariosRecord> _$horariosRecordSerializer =
    new _$HorariosRecordSerializer();

class _$HorariosRecordSerializer
    implements StructuredSerializer<HorariosRecord> {
  @override
  final Iterable<Type> types = const [HorariosRecord, _$HorariosRecord];
  @override
  final String wireName = 'HorariosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HorariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dia;
    if (value != null) {
      result
        ..add('dia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horas;
    if (value != null) {
      result
        ..add('horas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  HorariosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HorariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dia':
          result.dia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'horas':
          result.horas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$HorariosRecord extends HorariosRecord {
  @override
  final String? dia;
  @override
  final String? horas;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HorariosRecord([void Function(HorariosRecordBuilder)? updates]) =>
      (new HorariosRecordBuilder()..update(updates))._build();

  _$HorariosRecord._({this.dia, this.horas, this.ffRef}) : super._();

  @override
  HorariosRecord rebuild(void Function(HorariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HorariosRecordBuilder toBuilder() =>
      new HorariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HorariosRecord &&
        dia == other.dia &&
        horas == other.horas &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dia.hashCode);
    _$hash = $jc(_$hash, horas.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HorariosRecord')
          ..add('dia', dia)
          ..add('horas', horas)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HorariosRecordBuilder
    implements Builder<HorariosRecord, HorariosRecordBuilder> {
  _$HorariosRecord? _$v;

  String? _dia;
  String? get dia => _$this._dia;
  set dia(String? dia) => _$this._dia = dia;

  String? _horas;
  String? get horas => _$this._horas;
  set horas(String? horas) => _$this._horas = horas;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HorariosRecordBuilder() {
    HorariosRecord._initializeBuilder(this);
  }

  HorariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dia = $v.dia;
      _horas = $v.horas;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HorariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HorariosRecord;
  }

  @override
  void update(void Function(HorariosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HorariosRecord build() => _build();

  _$HorariosRecord _build() {
    final _$result =
        _$v ?? new _$HorariosRecord._(dia: dia, horas: horas, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
