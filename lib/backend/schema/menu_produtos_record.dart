import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'menu_produtos_record.g.dart';

abstract class MenuProdutosRecord
    implements Built<MenuProdutosRecord, MenuProdutosRecordBuilder> {
  static Serializer<MenuProdutosRecord> get serializer =>
      _$menuProdutosRecordSerializer;

  String? get nome;

  String? get descricao;

  double? get preco;

  String? get imagem;

  DocumentReference? get negocio;

  @BuiltValueField(wireName: 'id_produto_menu')
  int? get idProdutoMenu;

  @BuiltValueField(wireName: 'id_negocio')
  int? get idNegocio;

  bool? get destaque;

  int? get desconto;

  @BuiltValueField(wireName: 'categorias_menu')
  BuiltList<String>? get categoriasMenu;

  String? get medida;

  @BuiltValueField(wireName: 'favorito_users')
  BuiltList<DocumentReference>? get favoritoUsers;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MenuProdutosRecordBuilder builder) => builder
    ..nome = ''
    ..descricao = ''
    ..preco = 0.0
    ..imagem = ''
    ..idProdutoMenu = 0
    ..idNegocio = 0
    ..destaque = false
    ..desconto = 0
    ..categoriasMenu = ListBuilder()
    ..medida = ''
    ..favoritoUsers = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_produtos');

  static Stream<MenuProdutosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MenuProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MenuProdutosRecord._();
  factory MenuProdutosRecord(
          [void Function(MenuProdutosRecordBuilder) updates]) =
      _$MenuProdutosRecord;

  static MenuProdutosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMenuProdutosRecordData({
  String? nome,
  String? descricao,
  double? preco,
  String? imagem,
  DocumentReference? negocio,
  int? idProdutoMenu,
  int? idNegocio,
  bool? destaque,
  int? desconto,
  String? medida,
}) {
  final firestoreData = serializers.toFirestore(
    MenuProdutosRecord.serializer,
    MenuProdutosRecord(
      (m) => m
        ..nome = nome
        ..descricao = descricao
        ..preco = preco
        ..imagem = imagem
        ..negocio = negocio
        ..idProdutoMenu = idProdutoMenu
        ..idNegocio = idNegocio
        ..destaque = destaque
        ..desconto = desconto
        ..categoriasMenu = null
        ..medida = medida
        ..favoritoUsers = null,
    ),
  );

  return firestoreData;
}
