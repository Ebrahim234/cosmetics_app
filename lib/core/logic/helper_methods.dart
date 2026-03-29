import 'dart:async';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void goTo(Widget page, {bool canPop = false, int? delayInSeconds}) {
  void action() {
    Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => page),
      (route) => canPop,
    );
  }

  if (delayInSeconds != null) {
    Timer(Duration(seconds: delayInSeconds), () {
      action();
    });
  } else {
    action();
  }
}

void showMsg(String msg) {

  if(msg.isNotEmpty){
    ScaffoldMessenger.of(
      navigatorKey.currentContext!,
    ).showSnackBar(SnackBar(content: Text(msg)));
  }
}
