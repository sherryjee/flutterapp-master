import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/Auth.dart';
import 'package:loginapp/loginRegisterpage.dart';
import 'package:loginapp/home_page.dart';
import 'package:loginapp/mapping.dart';

class Splash_Screen extends StatefulWidget{

  _Splash_ScreenState  createState() => _Splash_ScreenState();






}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
void initState(){
    super.initState();
    Future.delayed(Duration(seconds:5),
        (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> home_page()));
    }

    );






  }



  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.red
            ),

          )
          ,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                child:Icon(Icons.local_dining,color: Colors.deepOrange, size: 50.0,),
                backgroundColor:Colors.white,
                radius:60.0,),
              Padding(padding: EdgeInsets.all(10.0)),
              Text("SUB KHALO",style: TextStyle(fontSize:25,color: Colors.white,fontWeight: FontWeight.w700),),
             Expanded(
               flex: 0,
                 child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top:20)),

                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top:20,bottom: 10.0)),
                      Center(child: Text("CREATED BY TEAM FLUTTER IQRAIANS",style:TextStyle(fontSize:20,color: Colors.white ),),),
                      Container(

                        child: Text("SYED MUHAMMAD SHAHERYAR AND UMER NAEEM QURESHI",style:TextStyle(fontSize:14,color: Colors.white ),),
                      padding: EdgeInsets.all(5.0),)
                    ],
              ))





            ],
          )
          ,
        ],
      ),
    );
  }
}





