import 'package:flutter/material.dart';

import 'item_model.dart';
class BmwPage extends StatefulWidget {
  static final String id="bmw_page";
  const BmwPage({super.key});

  @override
  State<BmwPage> createState() => _BmwPageState();
}

class _BmwPageState extends State<BmwPage> {
  MatnServise matn = MatnServise();
  int index = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "BMW",
                style: TextStyle(color: Colors.white),
              ),
              background: Image(
                image: AssetImage("assets/90.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ism:",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "BMW",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Haqida:",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      matn.getUzunMatn(index).matn,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 400,
                      child: PageView(
                        children: [
                          Container(
                              color: Colors.blue,
                              child: Image.asset(
                                "assets/97.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.green,
                              child: Image.asset(
                                "assets/95.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.orange,
                              child: Image.asset(
                                "assets/96.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.red,
                              child: Image.asset(
                                "assets/98.jpg",
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
