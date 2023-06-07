import 'dart:ffi';

abstract class BaseAPIServices {
  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(dynamic dat, String url);
}
