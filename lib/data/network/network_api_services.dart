import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mvvc/data/appExceptions.dart';
import 'package:mvvc/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseAPIServices {
  //GET API

  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJaon;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJaon = retrunReasponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJaon;
  }

//Post API
  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJaon;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(Duration(seconds: 10));
      responseJaon = retrunReasponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }

    return responseJaon;
  }

  dynamic retrunReasponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJaon = jsonDecode(response.body);
        return responseJaon;
      case 400:
        throw InvaildUrlExceptions();
      default:
        throw FetchDataExceptions(
            "Error While Communication with server + ${response.statusCode.toString()}");
    }
  }
}
