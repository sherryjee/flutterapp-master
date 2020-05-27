import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:loginapp/Circularbuttom.dart';
import 'package:loginapp/Auth.dart';
import 'mapping.dart';
import 'main.dart';



class loginRegisterPage extends StatefulWidget{
 loginRegisterPage({
   this.auth,
   this.onSignIn, this.title
});
  final String title;
  final AuthImplementation auth;
  final VoidCallback onSignIn;
  @override
  _loginRegisterpageState createState()=> _loginRegisterpageState();



}

enum FormType{

  login,
  register

}

class  _loginRegisterpageState extends State<loginRegisterPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final  formkey=new  GlobalKey<FormState>();
  FormType _formType= FormType.login;
  String _email="";
  String _password="";
  bool validateandsave (){
    final form= formkey.currentState;
    if(form.validate())
    {
      form.save();
      return true;
    }
    else{
      return false;
    }
  }
  void validateAndSubmit() async{
if(validateandsave()){
  try{
    if(_formType==FormType.login){
      String userId = await widget.auth.SignIn(_email, _password);
      print("login user id="+ userId);
    }
    else{
      String userId = await widget.auth.SignUp(_email, _password);
      print("Reister  user id="+ userId);
    }
    widget.onSignIn();
  }
  catch(e){
print("error="+ e.toString());
  }
}
  }


  void moveToregister(){
    formkey.currentState.reset();
    setState(() {
      _formType= FormType.register;
    });
  }
  void moveTologin(){
    formkey.currentState.reset();
    setState(() {
      _formType= FormType.login;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Center(child: Text("SAB KHALO"),),
        backgroundColor: Colors.red,

      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.all(5.0),
        child: Form(key: formkey,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:Inputfields() + CreateButton(),
            )),
      ),

    );
  }

  // ignore: non_constant_identifier_names
  List <Widget> Inputfields() {
    {
      return [

        SizedBox(height: 10.0,),
        logo(),
        Padding(padding: const EdgeInsets.all(15.0)),
        TextFormField(

            decoration: InputDecoration(
              hintText: 'email',
              labelText: 'email',
              border: OutlineInputBorder(),

              prefixIcon: Icon(Icons.email),

                contentPadding: const EdgeInsets.only(left: 10.0,right:10.0 ,bottom:10.0 ,top: 10.0)),
            validator: (value){
              return value.isEmpty ? 'Email is must Required' : null;
            },
            onSaved: (value){
              return _email=value;
            }

        ),
        Padding(padding: const EdgeInsets.all(5.0)),
        TextFormField(
            decoration: InputDecoration(
              hintText: 'password',
              labelText: 'password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.security),
              contentPadding: const EdgeInsets.all(10.0),),

            validator: (value){
              return value.isEmpty ? 'password is must Required' : null;
            },
            onSaved: (value){
              return _password=value;
            }),



      ];
    }

  }

  Widget logo()
  {
    return new SafeArea(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 110.0,
          child: Image.asset('images/logo.png'),
        ));
  }






// ignore: non_constant_identifier_names
  List <Widget> CreateButton(){
    {
      if(_formType ==FormType.login) {
        return
          [
            Padding(padding: const EdgeInsets.only(left: 4, right: 4, top: 20),
            child: SizedBox(


              height: 45,
              child: RaisedButton(
                onPressed: validateAndSubmit,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text(
                  'LOGIN',

                ),
                color: Colors.red,
              ),
            ),),
            Padding(padding: const EdgeInsets.only(left: 4, right: 4, top: 10),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  onPressed: moveToregister,
                  child: Text(
                    'CREATE AN ACCOUNT',

                  ),
                  color: Colors.transparent,
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 0.0,bottom: 12.0,right: 0.0,top: 0.0),
              child: Divider(
                color: Colors.red,
                height: 0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>
              [
                CircularButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/fb_logo.png',
                    color: Colors.white,
                  ),
                  bgColor: Colors.red[800],
                ),
                CircularButton(
                  onPressed: (){},
                  icon: Image.asset(
                    'images/google_logo.png',
                    color: Colors.red[800],
                  ),

                )

              ],
            ),
          ];
      }
      else{
        return
          [
            Padding(padding: const EdgeInsets.only(left: 4, right: 4, top: 20),
              child: SizedBox(
                height: 45,
                child: RaisedButton(
                  onPressed: validateAndSubmit,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text('REGISTER',),
                  color: Colors.red,
                ),
              ),),
            Padding(padding: const EdgeInsets.only(left: 4, right: 4, top: 10),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  onPressed: moveTologin,
                  child: Text(
                    'I ALREADY HAVE AN ACCOUNT ',

                  ),
                  color: Colors.transparent,
                ),
              ),),

          ];

      }

    }

  }






}
