
import 'package:flutter/material.dart';
import 'package:loginapp/CustomWidgets/custom_scaffold.dart';
import 'package:loginapp/loginRegisterpage.dart';
import 'package:loginapp/Auth.dart';
import 'home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginapp/account_pagesdetail/account_page.dart';
import 'home_page.dart';

class mapping extends StatefulWidget{
  final  AuthImplementation  auth;

  mapping({
    this.auth
  });
  State<StatefulWidget> createState(){
    return _MappingState();
  }

}
enum AuthStatus{
  notSignedIn,
  signedIn,

}
class _MappingState extends State<mapping>{
  AuthStatus authStatus = AuthStatus.notSignedIn;
  @override
  void initState(){
    super.initState();
    widget.auth.getCurrentUser().then((firebaseuserId)
    {
      setState(() {
        authStatus = firebaseuserId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });

  }
// ignore: non_constant_identifier_names
  void _SignedIn()
  {
    setState(() {
      authStatus=AuthStatus.signedIn;
    });

  }
  // ignore: non_constant_identifier_names
  void _SignedOut()
  {
    setState(() {
      authStatus=AuthStatus.notSignedIn;
    });

  }

  @override
  Widget build(BuildContext context) {

    switch(authStatus){
      case AuthStatus.notSignedIn:
        return loginRegisterPage(
          auth:widget.auth,
          onSignIn: _SignedIn,
        );
  
      case AuthStatus.signedIn:
        return account_page(
          auth:widget.auth,
          onSignOut: _SignedOut,
        );


    }



    return null;
  }
}