import 'dart:io';

import 'package:dio/dio.dart';
import 'package:electricharger/app/constants/app_cons.dart';

final class ApiManager {
  static final dio = Dio();

  static void init() {
    dio.options.baseUrl = AppCons().BASE_URL;
    dio.options.queryParameters = {
      'key': AppCons().API_KEY,
      'countrycode': 'tr'
    };
    dio.options.headers = {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.userAgentHeader: AppCons().packageName,
    };
  }
}
