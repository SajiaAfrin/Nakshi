import 'package:flutter/material.dart';
import 'package:flutter_dalia/main.dart';
class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;
  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Homepage()));},
              child: Text('FashApp')),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: (){}),
          ]
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_details_picture),
                ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_details_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                        child: new Text("\$${widget.product_details_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                    ),
                    Expanded(
                        child: new Text("\$${widget.product_details_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                    ),

                  ],
                ),
              ),
            ),),
            ),

          //========the first button=========
          Row(
            children: <Widget>[
            //====  the size button====
              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                      return new AlertDialog(
                        title: new Text("size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                    elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("size")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),),
              ),
              //====  the size button====
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("color"),
                          content: new Text("Choose the color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("color")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),),
              ),
              //====  the size button====
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("qty"),
                          content: new Text("Choose the quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),)
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("qty")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),),
              ),
            ],
          ),
          //========the Second button=========
          Row(
            children: <Widget>[
              //====  the size button====
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")
                 ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),

                  ],
              ),
          Divider(),
          new ListTile(
          title: new Text("Product Details"),
            subtitle: new Text("This dress is very nice."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),),

              // Remember to create the product brand
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),
          //ADD THE PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),)
            ],
          ),
          Divider(),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
          ),
          //SIMILAR PRODUCT SECTION
          Container(
            height: 340.0,
            child: Similar_products(),
          )
            ],
          ),
      );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pant",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pant",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 85,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: product_list.length,gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context, int index){
      return Similar_single_prod(
        prod_name: product_list[index]['name'],
        prod_picture: product_list[index]['picture'],
        prod_old_price: product_list[index]['old_price'],
        prod_price: product_list[index]['price'],
      ) ;
    });

  }
  }

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: new Text("hero 1"), child: Material(child: InkWell(onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
        //here we are passing the values of the product to the product details page
          builder: (context) => new ProductDetails(
            product_details_name: prod_name,
            product_details_new_price: prod_price,
            product_details_old_price: prod_old_price,
            product_details_picture: prod_picture,
          ))),
        child: GridTile(
            footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),
                  new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],)
            ),

            child: Image.asset(prod_picture,
              fit: BoxFit.cover,)),
      ),
      )),
    );

  }
}

