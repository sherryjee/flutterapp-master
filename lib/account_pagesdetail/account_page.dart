import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/global.dart';
import 'package:loginapp/CustomWidgets/custom_scaffold.dart';
import 'package:loginapp/Auth.dart';
import 'package:loginapp/mapping.dart';



class account_page extends StatelessWidget{
  account_page({
    this.auth,
    this.onSignOut, this.title
  });
  final String title;
  final AuthImplementation auth;
  final VoidCallback onSignOut;
  void logout()async {
    try{
      await auth.signOut();
      onSignOut();

    }
    catch(e){
      print("error "+ e);

    }
  }



  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
    title: "SUB KHALO",
      index: 3,
      body:new Container(
        margin: EdgeInsets.all(10.0
        ),

          child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[

          InkWell(
           child: Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('images2/sherrybhai.jpg',
                height: MediaQuery.of(context).size.height / 5.2,
                width: MediaQuery.of(context).size.width / 3.5,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                
                
                Padding(padding:EdgeInsets.only(top:15.0,bottom:5.0),),

                Text("sherry",style: setTextStyle(size: 25,weight: FontWeight.w600,color: Colors.black),),
                Text("  sherry@gmail.com",style: setTextStyle(size: 18,weight: FontWeight.w600,color: Colors.black),),
                Padding(padding: EdgeInsets.only(top: 5.0,),
                child: FlatButton(onPressed: logout,
                  child: Text("logout",style: setTextStyle(size: 15,weight: FontWeight.w700,color: primaryColor),),),),

              ],

            ),
          ]
      ),
    ),
            Padding(padding: EdgeInsets.all(20.0),child: Text("ACCOUNT INFORMATION",style: setTextStyle(size:20,weight: FontWeight.w600,color:primaryTextColor),textAlign: TextAlign.center,),),
            ListTile(
              title: Text('Full Name'),
              subtitle: Text('sherry'),
              trailing: Column(
                children: <Widget>[

                  IconButton(icon:Icon(Icons.border_color),onPressed: (){},),
                ],
              ),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('sherry@gmail.com'),
              trailing: Column(
                children: <Widget>[
                ],
              ),
            ),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('+0349-2021866'),
              trailing: Column(
                children: <Widget>[
                ],
              ),
            ),
            ListTile(
              title: Text('Address'),
              subtitle: Text('R-14 SASI HOMES BLOCK 4 GULISTAN E JAUHAR KATACHI'),
              trailing: Column(
                children: <Widget>[
                ],
              ),
            ),
            ListTile(
              title: Text('Gender'),
              subtitle: Text('male'),
              trailing: Column(
                children: <Widget>[
                ],
              ),
            ),
            ListTile(
              title: Text('Date of Birth'),
              subtitle: Text('---------'),
              trailing: Column(
                children: <Widget>[
                ],
              ),
            ),


          ],
        )),
      );
  }

}