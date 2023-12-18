import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start CMS Group Code

class CmsGroup {
  static String baseUrl = 'https://cmsvcard.solarion.id/items';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetProfileCall getProfileCall = GetProfileCall();
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? name = 'Dawam Raja',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: '${CmsGroup.baseUrl}/Solarion_Employees',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'filter[slug][_eq]': name,
        'fields': "*,photo.filename_disk,qr.filename_disk",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
      );
  dynamic whatsapp(dynamic response) => getJsonField(
        response,
        r'''$.data[:].whatsapp''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phone''',
      );
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data[:].title''',
      );
  dynamic photourl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].photo.filename_disk''',
      );
  dynamic slug(dynamic response) => getJsonField(
        response,
        r'''$.data[:].slug''',
      );
  dynamic idUser(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
      );
  dynamic qrUser(dynamic response) => getJsonField(
        response,
        r'''$.data[:].qr.filename_disk''',
      );
}

/// End CMS Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
