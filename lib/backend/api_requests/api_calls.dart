import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Group Code

class ApiGroup {
  static String getBaseUrl({
    String? token = '',
    String? pageNum = '',
    String? pageSize = '',
  }) =>
      'http://dev.xiaomon.com';
  static Map<String, String> headers = {
    'Authorization': '{TOKEN}',
  };
  static ApiopsportaldailypagelistCall apiopsportaldailypagelistCall =
      ApiopsportaldailypagelistCall();
}

class ApiopsportaldailypagelistCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? pageNum = '',
    String? pageSize = '',
  }) async {
    final baseUrl = ApiGroup.getBaseUrl(
      token: token,
      pageNum: pageNum,
      pageSize: pageSize,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apiopsportaldailypagelist',
      apiUrl: '$baseUrl/api/ops/portal/daily/page/list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '{TOKEN}',
      },
      params: {
        'pageNum': pageNum,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Group Code

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
