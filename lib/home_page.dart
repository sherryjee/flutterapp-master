import 'package:flutter/material.dart';
import 'package:loginapp/CustomWidgets/custom_scaffold.dart';
import 'loginRegisterpage.dart';
import 'main.dart';
import 'Auth.dart';
import 'package:loginapp/CustomWidgets/custom_bottom_appbar.dart';
import 'package:loginapp/popularpage/popular_items.dart';
import 'package:loginapp/popularpage/slider.dart';

class home_page extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      title: 'SUB KHALO',
      body: slider(),
    );
  }
}