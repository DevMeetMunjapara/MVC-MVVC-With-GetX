import 'package:mvvc/data/responce/status.dart';

class APIReasponce<T> {
  Status? status;
  T? data;
  String? massge;

  APIReasponce({this.status, this.data, this.massge});

  APIReasponce.loading() : status = Status.LOADING;
  APIReasponce.completed(this.data) : status = Status.COMPLETED;
  APIReasponce.error(this.massge) : status = Status.ERROR;
  @override
  String toString() {
    return "Status : $status \n $massge \n $data ";
  }
}
