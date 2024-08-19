import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start CageApp Group Code

class CageAppGroup {
  static String getBaseUrl() => 'https://cage-apis.bnbdevelopers.in/';
  static Map<String, String> headers = {};
  static UserLogsCall userLogsCall = UserLogsCall();
  static GetAllUserCagesCall getAllUserCagesCall = GetAllUserCagesCall();
  static GetCageCall getCageCall = GetCageCall();
  static UploadFileCall uploadFileCall = UploadFileCall();
  static AddcageCall addcageCall = AddcageCall();
}

class UserLogsCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final baseUrl = CageAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'userLogs',
      apiUrl: '${baseUrl}getUserLogs?uid=$uid',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? logs(dynamic response) => getJsonField(
        response,
        r'''$.logs[?(@.lType == 'cageAssignedUser')]''',
        true,
      ) as List?;
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'cageAssignedUser')].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'userActivityLog')].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? text(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'cageAssignedUser')].lText''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? range(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'cageAssignedUser')].range''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sRNo(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'userActivityLog')].srNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.logs[?(@.lType == 'cageAssignedUser')].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? log(dynamic response) => getJsonField(
        response,
        r'''$.logs[?(@.lType == 'userActivityLog')]''',
        true,
      ) as List?;
}

class GetAllUserCagesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final baseUrl = CageAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllUserCages',
      apiUrl: '$baseUrl/getAllUserCages?uid=$uid',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  List<String>? seNo(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].srNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? region(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].region''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? range(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].range''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locName(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].locName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? cages(dynamic response) => getJsonField(
        response,
        r'''$.cages[:]''',
        true,
      ) as List?;
  List<String>? cid(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].cid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.cages[:].currentImg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCageCall {
  Future<ApiCallResponse> call({
    String? cid = '',
  }) async {
    final baseUrl = CageAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCage',
      apiUrl: '${baseUrl}getCage?cid=$cid',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cid': cid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? lat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.lat''',
      ));
  String? lng(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.lng''',
      ));
  String? locName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.locName''',
      ));
  String? range(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.range''',
      ));
  String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.region''',
      ));
  String? srNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.srNo''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cage.status''',
      ));
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    final baseUrl = CageAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'uploadFile',
      apiUrl: '${baseUrl}uploadFile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddcageCall {
  Future<ApiCallResponse> call({
    String? lat = '',
    String? lan = '',
    String? locName = '',
    String? currentImg = '',
    String? name = '',
    String? uid = '',
    String? cid = '',
  }) async {
    final baseUrl = CageAppGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "lat": "$lat",
  "lng": "$lan",
  "locName": "$locName",
  "currentImg": "$currentImg",
  "name": "$name",
  "uid": "$uid",
  "cid": "$cid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Addcage',
      apiUrl: '${baseUrl}createNewActivity',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

/// End CageApp Group Code

class LoginUserCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginUser',
      apiUrl: 'https://cage-apis.bnbdevelopers.in/loginUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? designation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.designation''',
      ));
  static String? loginMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uid''',
      ));
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl: 'https://cage-apis.bnbdevelopers.in/getUser?uid=$uid',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? cagesAssigned(dynamic response) => (getJsonField(
        response,
        r'''$.user.cagesAssigned''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? designation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.designation''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.firstName''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  static String? range(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.range''',
      ));
  static String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.region''',
      ));
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
