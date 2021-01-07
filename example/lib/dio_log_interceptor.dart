import 'dart:convert';

import 'package:dio/dio.dart';

const tag = 'http';

///日志拦截器
class DioLogInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    var stringBuffer = StringBuffer();
    stringBuffer.write("\n==================== REQUEST ====================\n");
    stringBuffer.write("- URL:${options.uri}\n");
    stringBuffer.write("- METHOD: ${options.method}\n");
    stringBuffer.write("- HEADER:${json.encode(options.headers)}\n");
    final data = options.data;
    if (data != null) {
      if (data is Map && data.isNotEmpty) {
        stringBuffer.write("- BODY:\n${json.encode(data)}\n");
      } else if (data is FormData) {
        final formDataMap = Map()
          ..addEntries(data.fields)
          ..addEntries(
              data.files.map((e) => MapEntry(e.key, e.value.filename)));
        stringBuffer.write("- BODY:\n${json.encode(formDataMap)}\n");
      } else {
        stringBuffer.write("- BODY:\n${data.toString()}\n");
      }
    }
   print(stringBuffer.toString());
    return options;
  }

  @override
  Future onError(DioError err) async {
    var stringBuffer = StringBuffer();
    stringBuffer.write("\n==================== ERROR ====================\n");
    stringBuffer.write("- URL:${err.request.uri}\n");
    stringBuffer.write("- METHOD: ${err.request.method}\n");
    if (err.response != null && err.response.data != null) {
      stringBuffer.write("- ERROR: ${_parseResponse(err.response)}\n");
      return err.response;
    } else {
      stringBuffer.write("- ERROR_TYPE: ${err.type}\n");
      stringBuffer.write("- MSG: ${err.message}\n");
    }
    print(stringBuffer.toString());
    return err;
  }

  @override
  Future onResponse(Response response) async {
    var stringBuffer = StringBuffer();
    stringBuffer
        .write("\n==================== RESPONSE ====================\n");
    stringBuffer.write("- URL:${response.request.uri}\n");
    stringBuffer.write("- STATUS: ${response.statusCode}\n");
    stringBuffer.write("- HEADER:${json.encode(response.headers.map)}\n");
    print( response.toString());
    stringBuffer.clear();
    if (response.data != null) {
      stringBuffer.write("\n");
      stringBuffer.write("- URL:${response.request.uri}\n");
      stringBuffer.write("- STATUS: ${response.statusCode}\n");
      stringBuffer.write("- BODY: ${_parseResponse(response)}");
    }
    print(stringBuffer.toString());
    return response;
  }

  String _parseResponse(Response response) {
    String responseStr = "";
    var data = response.data;
    if (data is Map) {
      responseStr += json.encode(data);
    } else if (data is bool) {
      responseStr += data.toString();
    } else if (data is String) {
      responseStr += data;
    } else if (data is List) {
      responseStr += json.encode(data);
    }
    return responseStr;
  }
}
