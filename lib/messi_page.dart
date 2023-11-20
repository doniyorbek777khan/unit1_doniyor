import 'package:flutter/material.dart';

import 'item_model.dart';
class MessiPage extends StatefulWidget {
  static final String id="messi_page";
  const MessiPage({super.key});

  @override
  State<MessiPage> createState() => _MessiPageState();
}

class _MessiPageState extends State<MessiPage> {

  MatnServise matn = MatnServise();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                "Mercedes-AMG",
                style: TextStyle(color: Colors.white),
              ),
              background: Image(
                image: AssetImage("assets/9.jpeg"),
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
                          "Mercedes-AMG",
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
                                "assets/6.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.green,
                              child: Image.asset(
                                "assets/14.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.orange,
                              child: Image.asset(
                                "assets/10.jpg",
                                fit: BoxFit.cover,
                              )),
                          Container(
                              color: Colors.red,
                              child: Image.asset(
                                "assets/9.jpeg",
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
