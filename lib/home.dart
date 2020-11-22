import 'package:flutter/material.dart';
import 'detail.dart';
import 'dart:math';
import 'models/foodlist.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rg = Random();

  void _food() {
    Navigator.pushNamed(context, '/Food');
  }

  @override
  Widget build(BuildContext context) {
    final foodlists = ImageDetails.fetchAll();

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icon/food-serving.png', scale: 5),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'กินอะไรดี?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.lightBlue[700]),
                ),
                onPressed: _food,
                color: Colors.lightBlueAccent[700],
                textColor: Colors.white,
                child: Text(
                  "เลือกเอง".toUpperCase(),
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.lightBlue[700]),
                ),
                onPressed: () {
                  int page = rg.nextInt(foodlists.length);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        imagePath: foodlists[page].imagePath,
                        details: foodlists[page].details,
                        price: foodlists[page].price,
                        title: foodlists[page].titles,
                      ),
                    ),
                  );
                },
                color: Colors.lightBlueAccent[700],
                textColor: Colors.white,
                child: Text(
                  "เลือกให้หน่อย".toUpperCase(),
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
