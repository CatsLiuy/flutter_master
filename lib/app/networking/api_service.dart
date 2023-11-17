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

class ApiService extends BaseApiService {
  ApiService({BuildContext? buildContext}) : super(buildContext);

  @override
  // String get baseUrl => getEnv('API_BASE_URL');
  String get baseUrl => 'https://jsonplaceholder.typicode.com';

  @override
  final interceptors = {
    if (getEnv('APP_DEBUG') == true) PrettyDioLogger: PrettyDioLogger()
  };

  Future<dynamic> fetchUsers(String method) async {
    dynamic data;
    await network<dynamic>(
        request: (request) => method == "get"
            ? request.get("/users")
            : request.post("/users", data: {"user": "data"}),
        handleSuccess: (Response response) {
          data = response.data;
          print('fetchUsers 1 ${data}');
        });
    return data;
  }
}
