import 'package:flutter/material.dart';
import 'package:shop/HomePage.dart';
import 'package:shop/Pages/Similar_product_details.dart';

class ProductDetails extends StatefulWidget {
  final Product_Details_name;
  final Product_Details_picture;
  final Product_Details_old_price;
  final Product_Details_new_price;

  ProductDetails({
    this.Product_Details_name,
    this.Product_Details_picture,
    this.Product_Details_old_price,
    this.Product_Details_new_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: InkWell(
          child: Text('Fash'),
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
      body: ListView(
        children: [
          Container(
            height: 350.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.Product_Details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.Product_Details_name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "\$${widget.Product_Details_old_price}",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      )),
                      Expanded(
                          child: Text("\$${widget.Product_Details_new_price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red))),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //    ======= The Firsy Buttons Product Detail ========
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text('Size')),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text('Color')),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text('Quilty')),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          //    ==== The Second Buttons Product Detail  =======
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Buy now'),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {})
            ],
          ),
          Divider(),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Porduct Detail',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
                'before 1470 – 1533) was a Northern Netherlandish painter and designer of woodcuts. This oil-on-panel painting, by his son Dirck Jacobsz., depicts Van Oostsanen painting a portrait of his wife Anna. Though Van Oostsanen had died in 1533, his wife lived until around 1550, the year in which this work was painted. Its format ingeniously incorporates the viewer in its fiction. The painter looks out, presumably at his subject, whose likeness he is depicting. The work may have been intended to serve as a memorial to Jacobsz."s parents, to be installed above the couple"s tomb in a '),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text('Product name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.Product_Details_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text('Product brand',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Blazer X'),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text('Product condition',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('SOME THING'),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar Porducts', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 340.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}




