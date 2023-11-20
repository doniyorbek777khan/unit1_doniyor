
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

import 'item_model.dart';

class MustangPage extends StatefulWidget {
  const MustangPage({super.key});
  static final String id="mustang_page";

  @override
  State<MustangPage> createState() => _MustangPageState();
}

class _MustangPageState extends State<MustangPage> {
  @override
  Widget build(BuildContext context) {
    MatnServise matn = MatnServise();
    int index = 5;
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
                "Mustang",
                style: TextStyle(color: Colors.white),
              ),
              background: Image(
                image: AssetImage("assets/36.jpg"),
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
                          "Mustang",
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
                                "assets/32.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.green,
                              child: Image.asset(
                                "assets/33.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.orange,
                              child: Image.asset(
                                "assets/34.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.red,
                              child: Image.asset(
                                "assets/35.jpg",
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
