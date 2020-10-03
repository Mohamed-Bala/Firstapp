import 'package:flutter/material.dart';
import 'package:shop/HomePage.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Start AppBar
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: InkWell(
          child: Text('Cart'),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage())),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      // End AppBar
      bottomNavigationBar: Container(
          child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text('Total'),
              subtitle: Text('\$255'),
            ),
          ),
          Expanded(
              child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Check Out',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          ))
        ],
      )),
    );
  }
}
