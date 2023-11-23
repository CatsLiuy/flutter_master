import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '/app/networking/dio/base_api_service.dart';
import 'package:nylo_framework/nylo_framework.dart';

/*
|--------------------------------------------------------------------------
| ApiService
| -------------------------------------------------------------------------
| Define your API endpoints

| Learn more https://nylo.dev/docs/5.x/networking
|--------------------------------------------------------------------------
*/

class FlutterService extends BaseApiService {
  FlutterService({BuildContext? buildContext}) : super(buildContext);

  @override
  String get baseUrl => getEnv('API_BASE_URL');

  @override
  final interceptors = {
    if (getEnv('APP_DEBUG') == true) PrettyDioLogger: PrettyDioLogger()
  };

  Future<List<User>> fetchUsers(String method) async {
    dynamic data;
    await network<List<User>>(
        request: (request) => method == "get"
            ? request.get("/users?id=1")
            : request.post("/users", data: {"user": "data"}),
        handleSuccess: (Response response) {
          data = response.data;
          print('response  ${data}');
        });
    return data;
  }
}
