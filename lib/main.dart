import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own imports
import 'package:flutter_dalia/components/horizontal_listview.dart';
import 'package:flutter_dalia/components/products.dart';
import 'package:flutter_dalia/pages/cart.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      )
  );
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
        AssetImage('images/m2.jpg'),
      ],
      autoplay: false,
  //    animationCurve: Curves.fastOutSlowIn,
  //    animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color:Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          })
        ]
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(accountName: Text('Sajia Afrin'), accountEmail: Text('sajia@gmai.com'),
            currentAccountPicture: GestureDetector(
             child: new CircleAvatar(
               backgroundColor: Colors.grey,
               child: Icon(Icons.person, color: Colors.white,),
             ),

      ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
            // body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(Icons.home, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(Icons.favorite, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color:Colors.red),
              ),
            ),


          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
        //horizontal list view begins here
          HorizontalList(),
          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),
            //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

