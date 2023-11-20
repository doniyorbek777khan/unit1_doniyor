import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  static final String id = "icon_page";

  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "About programma",
          style: TextStyle(fontFamily: "Billabong", fontSize: 33),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/96.jpg"),
              ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Programma moshinalar haqida bo'lib unda moshinalarni avvaldan yani boshidan o'rganishingiz mumkin. U mashina qaysi brenddan va qaysi kompaniya ishlab chiqargan nechnchi yildan beri faoliyat olib borayotganini bilib olishingiz  mumkin. Bu Programmada ,,Lombargini,, va boshqa moshinalar haqida bilib olishingiz mumkin. So'ngra o'z fikringizni yozib qoldiring. O'zingizga kerakli bo'lgan moshina tarixi haqida bilib oling. Programmani yaratgan inson Oktamov Doniyor yaratilgan sana 10.11.2023",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
