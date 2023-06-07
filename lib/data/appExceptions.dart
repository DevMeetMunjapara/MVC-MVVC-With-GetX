class AppExceptions implements Exception {
  final _massges;
  final _prefix;
  AppExceptions([this._massges, this._prefix]);

  String toString() {
    return "$_prefix$_massges";
  }
}

class InternetException extends AppExceptions {
  InternetException([String? massges]) : super(massges, "No Internet");
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? massges]) : super(massges, "Request Time Out");
}

class ServerExceptions extends AppExceptions {
  ServerExceptions([String? massges]) : super(massges, "Internal Server Error");
}

class InvaildUrlExceptions extends AppExceptions {
  InvaildUrlExceptions([String? massges]) : super(massges, "InValid URL Error");
}

class FetchDataExceptions extends AppExceptions {
  FetchDataExceptions([String? massges]) : super(massges, "");
}
