import 'package:flutter/material.dart';
import 'package:unit1/bmw_page.dart';
import 'package:unit1/bugatti.dart';
import 'package:unit1/chevrolet_page.dart';
import 'package:unit1/ferrari_page.dart';
import 'package:unit1/icon_page.dart';
import 'package:unit1/messi_page.dart';


import 'package:unit1/second_page.dart';

import 'mustang_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context,IconPage.id );
            },
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          ' The history of cars',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Billabong'),
        ),
      ),
      body: ListView(
        children: [
          _itemList(
              image: "assets/1.jpg",
              name: "Lomabargini",
              yaer: "1963-yil",
              page: SecondPage.id),
          _itemList(
              image: "assets/6.jpg",
              name: "Mercedes-AMG",
              yaer: "1455-yil",
              page: MessiPage.id),
          _itemList(
              image: "assets/15.png",
              name: "Ferrari",
              yaer: "1939-yil",
              page: FerraiPage.id),
          _itemList(
              image: "assets/23.jpg",
              name: "Bugatti",
              yaer: "1909-yil",
              page: Bugatti.id),
          _itemList(
              image: "assets/123.jpg",
              name: "Chevrolet",
              yaer: "2007-yil",
              page: ChevroletPage.id),
          _itemList(
              image: "assets/36.jpg",
              name: "Mustang",
              yaer: "1903-yil",
              page: MustangPage.id),
          _itemList(
              image: "assets/98.jpg",
              name: "Bmw",
              yaer: "1916-yil",
              page: BmwPage.id)
        ],
      ),
    );
  }

  Widget _itemList({image, name, yaer, page}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Card(
        margin: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 140,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  yaer,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
