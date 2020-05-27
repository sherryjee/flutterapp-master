import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/global.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/CustomWidgets/circular_button.dart';
import 'package:loginapp/CustomWidgets/custom_scaffold.dart';
import 'package:loginapp/global.dart';
import 'package:loginapp/CustomWidgets/custom_scaffold.dart';


class LisView_elements extends StatefulWidget{
  @override
  _LisView_elementsState  createState() => _LisView_elementsState();
}

class _LisView_elementsState extends State<LisView_elements> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  CustomScaffold(
    index: 2,
      title: "sub khalo",
      body: Container(

        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),

        child:ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images2/food1.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text('fruit salad',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ),
                      Row(
                        children: getRatingRow(),
                      ),
                      Row(
                        children: Rates_1(),
                      ),
                    ],

                  ),
                ]
            ),
          ),
          Padding(child: Divider(
            color: Colors.red,
            thickness:1.5,
          ),
              padding: EdgeInsets.all(10.0)),
          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images2/food3.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text('  Burger',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: primaryTextColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  getRatingRow(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: Rate_2(),
                      ),
                    ],

                  ),
                ]
            ),
          ),
          Padding(child: Divider(
            color: Colors.red,
            thickness:1.5,
          ),
              padding: EdgeInsets.all(10.0)),
          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/food4.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text('  Italian salad',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: primaryTextColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: getRatingRow2(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: Rate_3()
                      ),
                    ],

                  ),
                ]
            ),
          ),
          Padding(child: Divider(
            color: Colors.red,
            thickness:1.5,
          ),
              padding: EdgeInsets.all(10.0)),

          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/food6.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text('  Special beef sofi',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: primaryTextColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: getRatingRow3(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: Rate_3(),
                      ),
                    ],

                  ),
                ]
            ),
          ),
          Padding(child: Divider(
            color: Colors.red,
            thickness:1.5,
          ),
              padding: EdgeInsets.all(10.0)),

          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/food10.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text('  Spicy Pizza',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: primaryTextColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: getRatingRow3(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: Rates_1()
                      ),
                    ],

                  ),
                ]
            ),
          ),
          Padding(child: Divider(
            color: Colors.red,
            thickness:1.5,
          ),
              padding: EdgeInsets.all(10.0)),

          InkWell(
            onTap: () {},
            child: Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/food11.jpeg',
                            height: MediaQuery.of(context).size.height / 8.2,
                            width: MediaQuery.of(context).size.width / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:0, bottom: 2),
                        child: Text(' brade Chaat',
                          style: setTextStyle(
                              size: 20,
                              weight: FontWeight.w900,
                              color: primaryTextColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: getRatingRow2(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: Rate_3(),
                      ),
                    ],

                  ),
                ]
            ),
          ),
        ]
          ),
                  ));
  }
//********************************widget type methods*******************************************
  List<Widget> getRatingRow() {
    List<Widget> row = List();
    for (int i = 0; i <4; i++) {

      row.add(
        Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.star,
              color: Colors.orangeAccent,
              size: 12,
            )),

      );
    }
    row.add(Container(
      width: 8,
    ));
    row.add(
      Text(
        '5.0 (15 Reviews)',
        style: setTextStyle(size: 12, color: primaryTextColor),
      ),
    );
    return row;
  }
  //second method of rating
  List<Widget> getRatingRow2() {
    List<Widget> row = List();
    for (int i = 0; i <4; i++) {
      row.add(
        Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.star,
              color: Colors.orangeAccent,
              size: 11,
            )),
      );
    }
    row.add(Container(
      width: 8,
    ));
    row.add(
      Text(
        '4.0 (20 Reviews)',
        style: setTextStyle(size: 12, color: primaryTextColor),
      ),
    );
    return row;
  }
  List<Widget> getRatingRow3() {
    List<Widget> row = List();
    for (int i = 0; i <4; i++) {
      row.add(
        Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.star,
              color: Colors.orangeAccent,
              size: 11,
            )),
      );
    }
    row.add(Container(
      width: 8,
    ));
    row.add(
      Text(
        '3.0 (10 Reviews)',
        style: setTextStyle(size: 12, color: primaryTextColor),
      ),
    );
    return row;
  }




//Rs 500
  List<Widget> Rates_1(){
    List<Widget> row=List();
    row.add(
        Text('15 pieces',
          style: setTextStyle(size: 12, color: primaryTextColor),
        ));
    row.add(
        Container(
          width: 30,
        )
    );
    row.add(
        Text('Rs${500}',style: setTextStyle(size: 12,weight: FontWeight.w600,color: primaryColor),)
    );



    return row;
  }
               //Rs250
  List<Widget>Rate_2() {
    List<Widget> row = List();

    row.add(
        Text('10 pieces',
          style: setTextStyle(size: 12, color: primaryTextColor),
        ));
    row.add(
        Container(width: 30,)
    );
    row.add(
        Text('Rs${250}', style: setTextStyle(
            size: 12, weight: FontWeight.w600, color: primaryColor),)
    );


    return row;
  }
  //third method
  List<Widget>Rate_3() {
    List<Widget> row = List();
    row.add(
        Text('50 pieces',
          style: setTextStyle(size: 12, color: primaryTextColor),
        ));
    row.add(
        Container(width: 30,)
    );
    row.add(
        Text('Rs${300}', style: setTextStyle(
            size: 12, weight: FontWeight.w600, color: primaryColor),)
    );


    return row;
  }
//********************************1150******************************************************
  List<Widget>Rate_4() {
    List<Widget> row = List();
    row.add(
        Text('5 pieces',
          style: setTextStyle(size: 12, color: primaryTextColor),
        ));
    row.add(
        Container(width: 30,)
    );
    row.add(
        Text('Rs${1150}', style: setTextStyle(
            size: 12, weight: FontWeight.w600, color: primaryColor),)
    );
    return row;
  }




}

