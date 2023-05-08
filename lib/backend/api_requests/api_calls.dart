import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EnderecoCall {
  static Future<ApiCallResponse> call({
    String? ll = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Endereco',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=${ll}&key=AIzaSyCnvDpqXvdrvyCeN-DTzmqBQG9hZzFIUIA',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$['results'][1]['formatted_address']''',
      );
  static dynamic rua(dynamic response) => getJsonField(
        response,
        r'''$['results'][0]['address_components'][1]['long_name']''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
