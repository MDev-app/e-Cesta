import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'endereco_struct.g.dart';

abstract class EnderecoStruct
    implements Built<EnderecoStruct, EnderecoStructBuilder> {
  static Serializer<EnderecoStruct> get serializer =>
      _$enderecoStructSerializer;

  String? get cep;

  String? get rua;

  String? get bairro;

  String? get numero;

  String? get cidade;

  String? get estado;

  String? get complemento;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(EnderecoStructBuilder builder) => builder
    ..cep = ''
    ..rua = ''
    ..bairro = ''
    ..numero = ''
    ..cidade = ''
    ..estado = ''
    ..complemento = ''
    ..firestoreUtilData = FirestoreUtilData();

  EnderecoStruct._();
  factory EnderecoStruct([void Function(EnderecoStructBuilder) updates]) =
      _$EnderecoStruct;
}

EnderecoStruct createEnderecoStruct({
  String? cep,
  String? rua,
  String? bairro,
  String? numero,
  String? cidade,
  String? estado,
  String? complemento,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EnderecoStruct(
      (e) => e
        ..cep = cep
        ..rua = rua
        ..bairro = bairro
        ..numero = numero
        ..cidade = cidade
        ..estado = estado
        ..complemento = complemento
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

EnderecoStruct? updateEnderecoStruct(
  EnderecoStruct? endereco, {
  bool clearUnsetFields = true,
}) =>
    endereco != null
        ? (endereco.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addEnderecoStructData(
  Map<String, dynamic> firestoreData,
  EnderecoStruct? endereco,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (endereco == null) {
    return;
  }
  if (endereco.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && endereco.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final enderecoData = getEnderecoFirestoreData(endereco, forFieldValue);
  final nestedData = enderecoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = endereco.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getEnderecoFirestoreData(
  EnderecoStruct? endereco, [
  bool forFieldValue = false,
]) {
  if (endereco == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(EnderecoStruct.serializer, endereco);

  // Add any Firestore field values
  endereco.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEnderecoListFirestoreData(
  List<EnderecoStruct>? enderecos,
) =>
    enderecos?.map((e) => getEnderecoFirestoreData(e, true)).toList() ?? [];
