import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvvc/res/colors/app_color.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMeassge(String message) {
    Fluttertoast.showToast(
        msg: message, backgroundColor: AppColor.black, textColor: Colors.white);
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
