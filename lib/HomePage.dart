import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// My Import
import 'package:shop/Drawer.dart';
import 'package:shop/componets/Horizontal_listView.dart';
import 'package:shop/componets/Products.dart';
import 'package:shop/Pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Start Build My Widget
    Widget imageCarousel = Container(
      height: 250.0,
      width: 80.0,
      // Image Carousel
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('c1.jpg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        indicatorBgPadding: 10.0,
        dotBgColor: Colors.transparent,
      ),
    );
    // End Build My Widget
    return Scaffold(
      //Start AppBar
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('Fash'),
        centerTitle: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      // End AppBar
      drawer: DrawerList(), // Drawer Class
      body: ListView(
        children: [
          imageCarousel, // Colld Image Carousel
          // Padding Widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categoris',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Horizontal List View
          HorizontalList(), // HorizontalList Class
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Products',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            height: 300.0,
            child: ProductList(), // ProductList Class
          )
        ],
      ),
    );
  }
}
