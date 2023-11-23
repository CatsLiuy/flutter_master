


import 'dart:developer';

import 'package:app/networking/api_provider.dart';

/// FlutterSignal Package version
const String applVersion = "1.1.0";

class FlutterSignal {

  FlutterSignal._privateConstructor();

  static final FlutterSignal instance = FlutterSignal._privateConstructor();

  late ApiProvider _apiProvider;
  bool? _debugMode;

  /// Initialize the class
  Future<void> init(
      {bool debugMode = false,
        String? encryptKey,
        String? encryptSecret}) async {
    _apiProvider = ApiProvider(debugMode: debugMode, version: applVersion);
    setDebugMode(debugMode);
    await _apiProvider.init();
  }


  /// Set the token for notifications
  void setToken(String token) {
    _apiProvider.setToken(token);
  }

  /// Enable debug mode for logging information
  void setDebugMode(bool debugMode) {
    _debugMode = debugMode;
    _apiProvider.setDebugMode(debugMode);
  }

  /// Print to the console a [message]
  void _printLog(String message) {
    if (_debugMode == true) {
      log("FlutterApp : $message");
    }
  }

  Map<String, dynamic> _standardPayload(String type, json, String path) =>
      {"type": type, "payload": json, "path": path};

  /// WooSignal Request
  Future<T?> _appSignalRequest<T>(
      {dynamic payload = const {},
        required String method,
        required String path,
        required T Function(dynamic json) jsonResponse,
        String postUrl = "https://api.sxmcyy.cn"}) async {
    payload = _standardPayload(method, payload, path);
    _printLog("payload: $payload");
    dynamic json;
    if(method == 'post'){
      json = await _apiProvider.post(postUrl, payload);
    }else{
      json = await _apiProvider.get(postUrl);
    }
    _printLog("json: $json");
    // if (json is Map<String, dynamic> && json.containsKey('error')) {
    //   _printLog(json['error']);
    //   return null;
    // }

    T model;
    try {
      model = jsonResponse(json);
    } on Exception catch (e) {
      _printLog(e.toString());
      return null;
    }

    _printLog(model.toString());
    return model;
  }
}