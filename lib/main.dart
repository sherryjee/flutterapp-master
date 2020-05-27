import 'package:flutter/material.dart';
import 'package:loginapp/home_page.dart';
import 'package:loginapp/mapping.dart';
import 'Auth.dart';
import 'loginRegisterpage.dart';
import 'package:loginapp/mapping.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:loginapp/popularpage/slider.dart';
import 'package:loginapp/add_cartpage/listView_elements.dart';
import 'package:loginapp/account_pagesdetail/account_page.dart';
import 'package:loginapp/splash_screen/Splash_Screen.dart';
import 'package:loginapp/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title:"sab khalo",
        theme:  ThemeData(
          primaryColor: Colors.redAccent
        ),

        home:mapping(auth: Auth(),)
        //home_page(),


      //Account_page()
        //LisView_elements(),
      //mapping(auth: Auth(),)
      //loginRegisterPage(title: "demo",)


    );
  }
}
