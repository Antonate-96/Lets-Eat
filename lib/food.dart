import 'package:flutter/material.dart';
import 'models/foodlist.dart';
import 'detail.dart';
import 'dart:math';

class FoodMenu extends StatefulWidget {
  FoodMenu({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  int _food1 = 0;
  int _food2 = 4;
  int _food3 = 5;
  //Star of functions//
  void _home() {
    Navigator.pushNamed(context, '/');
  }

  //End of Functions//

  @override
  Widget build(BuildContext context) {
    final foodlists = ImageDetails.fetchAll();
    var rg = Random();
    var list = new List<int>.generate(
        foodlists.length, (int index) => index); // [0, 1, 4]

    //Star of functions//
    void _recommend() {
      setState(() {
        list.shuffle();
        _food1 = list.indexOf(0);
        _food2 = list.indexOf(1);
        _food3 = list.indexOf(2);
      });
    }
    //End of Functions//

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/icon/food-serving.png', scale: 7),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'กินอะไรดี?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'เมนูแนะนำ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 145,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imagePath: foodlists[_food1].imagePath,
                            details: foodlists[_food1].details,
                            price: foodlists[_food1].price,
                            title: foodlists[_food1].titles,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(foodlists[_food1].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imagePath: foodlists[_food2].imagePath,
                            details: foodlists[_food2].details,
                            price: foodlists[_food2].price,
                            title: foodlists[_food2].titles,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(foodlists[_food2].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imagePath: foodlists[_food3].imagePath,
                            details: foodlists[_food3].details,
                            price: foodlists[_food3].price,
                            title: foodlists[_food3].titles,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(foodlists[_food3].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'เมนูทั้งหมด...',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imagePath: foodlists[index].imagePath,
                              details: foodlists[index].details,
                              price: foodlists[index].price,
                              title: foodlists[index].titles,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(foodlists[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: foodlists.length,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.lightBlue[700]),
                    ),
                    onPressed: _recommend,
                    color: Colors.lightBlueAccent[700],
                    textColor: Colors.white,
                    child: Text(
                      "แนะนำอีกที",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                      "เลือกให้หน่อย",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
