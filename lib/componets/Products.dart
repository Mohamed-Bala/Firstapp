import 'package:flutter/material.dart';
import 'package:shop/Pages/Product_Details.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  var product_list = [
    {
      'name': ' blazer',
      'picture': 'images/Product/blazerx.jpeg',
      'old_price': 120,
      'price': 88,
    },
    {
      'name': 'Red dress',
      'picture': 'images/Product/dress1.jpeg',
      'old_price': 150,
      'price': 90,
    },
    {
      'name': 'Black blazer',
      'picture': 'images/Product/blazer2.jpeg',
      'old_price': 200,
      'price': 130,
    },
    {
      'name': 'Balck dress',
      'picture': 'images/Product/dress2.jpeg',
      'old_price': 250,
      'price': 150,
    },
    {
      'name': 'Teshart',
      'picture': 'images/Product/teshart.jpg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Nike',
      'picture': 'images/Product/shoe1.jpg',
      'old_price': 300,
      'price': 230,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) {
        return Singl_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Singl_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Singl_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text(''),
          child: Material(
            // Push Product_Details Page
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        // Passing The Values of The Product to The Product Details Page
                        Product_Details_name: prod_name,
                        Product_Details_picture: prod_picture,
                        Product_Details_old_price: prod_old_price,
                        Product_Details_new_price: prod_price,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '\$$prod_price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
