// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_produtos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuProdutosRecord> _$menuProdutosRecordSerializer =
    new _$MenuProdutosRecordSerializer();

class _$MenuProdutosRecordSerializer
    implements StructuredSerializer<MenuProdutosRecord> {
  @override
  final Iterable<Type> types = const [MenuProdutosRecord, _$MenuProdutosRecord];
  @override
  final String wireName = 'MenuProdutosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MenuProdutosRecord object,
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
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preco;
    if (value != null) {
      result
        ..add('preco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.negocio;
    if (value != null) {
      result
        ..add('negocio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.idProdutoMenu;
    if (value != null) {
      result
        ..add('id_produto_menu')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.idNegocio;
    if (value != null) {
      result
        ..add('id_negocio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.destaque;
    if (value != null) {
      result
        ..add('destaque')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.desconto;
    if (value != null) {
      result
        ..add('desconto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriasMenu;
    if (value != null) {
      result
        ..add('categorias_menu')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.medida;
    if (value != null) {
      result
        ..add('medida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoritoUsers;
    if (value != null) {
      result
        ..add('favorito_users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  MenuProdutosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuProdutosRecordBuilder();

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
        case 'preco':
          result.preco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'negocio':
          result.negocio = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'id_produto_menu':
          result.idProdutoMenu = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id_negocio':
          result.idNegocio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'destaque':
          result.destaque = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'desconto':
          result.desconto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'categorias_menu':
          result.categoriasMenu.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'medida':
          result.medida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorito_users':
          result.favoritoUsers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$MenuProdutosRecord extends MenuProdutosRecord {
  @override
  final String? nome;
  @override
  final String? descricao;
  @override
  final double? preco;
  @override
  final String? imagem;
  @override
  final DocumentReference<Object?>? negocio;
  @override
  final int? idProdutoMenu;
  @override
  final int? idNegocio;
  @override
  final bool? destaque;
  @override
  final int? desconto;
  @override
  final BuiltList<String>? categoriasMenu;
  @override
  final String? medida;
  @override
  final BuiltList<DocumentReference<Object?>>? favoritoUsers;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MenuProdutosRecord(
          [void Function(MenuProdutosRecordBuilder)? updates]) =>
      (new MenuProdutosRecordBuilder()..update(updates))._build();

  _$MenuProdutosRecord._(
      {this.nome,
      this.descricao,
      this.preco,
      this.imagem,
      this.negocio,
      this.idProdutoMenu,
      this.idNegocio,
      this.destaque,
      this.desconto,
      this.categoriasMenu,
      this.medida,
      this.favoritoUsers,
      this.ffRef})
      : super._();

  @override
  MenuProdutosRecord rebuild(
          void Function(MenuProdutosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuProdutosRecordBuilder toBuilder() =>
      new MenuProdutosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuProdutosRecord &&
        nome == other.nome &&
        descricao == other.descricao &&
        preco == other.preco &&
        imagem == other.imagem &&
        negocio == other.negocio &&
        idProdutoMenu == other.idProdutoMenu &&
        idNegocio == other.idNegocio &&
        destaque == other.destaque &&
        desconto == other.desconto &&
        categoriasMenu == other.categoriasMenu &&
        medida == other.medida &&
        favoritoUsers == other.favoritoUsers &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, preco.hashCode);
    _$hash = $jc(_$hash, imagem.hashCode);
    _$hash = $jc(_$hash, negocio.hashCode);
    _$hash = $jc(_$hash, idProdutoMenu.hashCode);
    _$hash = $jc(_$hash, idNegocio.hashCode);
    _$hash = $jc(_$hash, destaque.hashCode);
    _$hash = $jc(_$hash, desconto.hashCode);
    _$hash = $jc(_$hash, categoriasMenu.hashCode);
    _$hash = $jc(_$hash, medida.hashCode);
    _$hash = $jc(_$hash, favoritoUsers.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuProdutosRecord')
          ..add('nome', nome)
          ..add('descricao', descricao)
          ..add('preco', preco)
          ..add('imagem', imagem)
          ..add('negocio', negocio)
          ..add('idProdutoMenu', idProdutoMenu)
          ..add('idNegocio', idNegocio)
          ..add('destaque', destaque)
          ..add('desconto', desconto)
          ..add('categoriasMenu', categoriasMenu)
          ..add('medida', medida)
          ..add('favoritoUsers', favoritoUsers)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MenuProdutosRecordBuilder
    implements Builder<MenuProdutosRecord, MenuProdutosRecordBuilder> {
  _$MenuProdutosRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  double? _preco;
  double? get preco => _$this._preco;
  set preco(double? preco) => _$this._preco = preco;

  String? _imagem;
  String? get imagem => _$this._imagem;
  set imagem(String? imagem) => _$this._imagem = imagem;

  DocumentReference<Object?>? _negocio;
  DocumentReference<Object?>? get negocio => _$this._negocio;
  set negocio(DocumentReference<Object?>? negocio) => _$this._negocio = negocio;

  int? _idProdutoMenu;
  int? get idProdutoMenu => _$this._idProdutoMenu;
  set idProdutoMenu(int? idProdutoMenu) =>
      _$this._idProdutoMenu = idProdutoMenu;

  int? _idNegocio;
  int? get idNegocio => _$this._idNegocio;
  set idNegocio(int? idNegocio) => _$this._idNegocio = idNegocio;

  bool? _destaque;
  bool? get destaque => _$this._destaque;
  set destaque(bool? destaque) => _$this._destaque = destaque;

  int? _desconto;
  int? get desconto => _$this._desconto;
  set desconto(int? desconto) => _$this._desconto = desconto;

  ListBuilder<String>? _categoriasMenu;
  ListBuilder<String> get categoriasMenu =>
      _$this._categoriasMenu ??= new ListBuilder<String>();
  set categoriasMenu(ListBuilder<String>? categoriasMenu) =>
      _$this._categoriasMenu = categoriasMenu;

  String? _medida;
  String? get medida => _$this._medida;
  set medida(String? medida) => _$this._medida = medida;

  ListBuilder<DocumentReference<Object?>>? _favoritoUsers;
  ListBuilder<DocumentReference<Object?>> get favoritoUsers =>
      _$this._favoritoUsers ??= new ListBuilder<DocumentReference<Object?>>();
  set favoritoUsers(ListBuilder<DocumentReference<Object?>>? favoritoUsers) =>
      _$this._favoritoUsers = favoritoUsers;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MenuProdutosRecordBuilder() {
    MenuProdutosRecord._initializeBuilder(this);
  }

  MenuProdutosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _descricao = $v.descricao;
      _preco = $v.preco;
      _imagem = $v.imagem;
      _negocio = $v.negocio;
      _idProdutoMenu = $v.idProdutoMenu;
      _idNegocio = $v.idNegocio;
      _destaque = $v.destaque;
      _desconto = $v.desconto;
      _categoriasMenu = $v.categoriasMenu?.toBuilder();
      _medida = $v.medida;
      _favoritoUsers = $v.favoritoUsers?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuProdutosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuProdutosRecord;
  }

  @override
  void update(void Function(MenuProdutosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuProdutosRecord build() => _build();

  _$MenuProdutosRecord _build() {
    _$MenuProdutosRecord _$result;
    try {
      _$result = _$v ??
          new _$MenuProdutosRecord._(
              nome: nome,
              descricao: descricao,
              preco: preco,
              imagem: imagem,
              negocio: negocio,
              idProdutoMenu: idProdutoMenu,
              idNegocio: idNegocio,
              destaque: destaque,
              desconto: desconto,
              categoriasMenu: _categoriasMenu?.build(),
              medida: medida,
              favoritoUsers: _favoritoUsers?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoriasMenu';
        _categoriasMenu?.build();

        _$failedField = 'favoritoUsers';
        _favoritoUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MenuProdutosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
