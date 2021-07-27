import 'package:al_eccom/components/widgets/app_bar.dart';
import 'package:al_eccom/models/cart_item.dart';
import 'package:al_eccom/pages/cart.dart';
import 'package:al_eccom/pallet.dart';
import 'package:flutter/material.dart';

import 'components/widgets/product_grid/product_grid.dart';

void main() {
  runApp(AlEccom());
}

class AlEccom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/cart": (context) => Cart(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Pallet.primary,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: "Alata",
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 20,
            fontFamily: "Alata",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontFamily: "Alata",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline4: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline5: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: Colors.black,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  static List<CartItem> cartItens = [];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _products = [
    {
      "title": "Mesa",
      "price": 300,
      "photo": "movel1.jpeg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Cadeira",
      "price": 120,
      "photo": "movel2.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Manta",
      "price": 200,
      "photo": "movel3.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Cinza",
      "price": 800,
      "photo": "movel4.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Mesa de cabeceira",
      "price": 400,
      "photo": "movel5.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Jogo de Cama",
      "price": 250,
      "photo": "movel6.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Branco",
      "price": 900,
      "photo": "movel7.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: "AlEccom",
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Divider(),
                ),
              ),
              Text("Produtos"),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(
            child: ProductGrid(
              products: _products,
              updateState: () {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
