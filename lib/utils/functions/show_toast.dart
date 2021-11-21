import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 4,
    textColor: Colors.white,
    backgroundColor: Colors.black,
    fontSize: 16.0,
    webPosition: 'center',
  );
}
