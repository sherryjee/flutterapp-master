import 'package:flutter/material.dart';
import 'package:loginapp/Favorites/favorites_page.dart';
import 'package:loginapp/home_page.dart';
import '../global.dart';
import 'package:loginapp/add_cartpage/listView_elements.dart';
import 'package:loginapp/account_pagesdetail/account_page.dart';
import 'package:loginapp/popularpage/slider.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key key, @required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0
                    ? primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {
                if (index != 0)
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>home_page()));
              }),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: index == 1
                      ? primaryColor
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {
                  if (index != 1)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => FavoritesPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: index == 2
                      ? primaryColor
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {if (index != 2)
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LisView_elements()));
                }),
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: index == 3
                    ? primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {
                if (index != 3)
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => account_page()));


              })
        ],
      ),
    );
  }
}
