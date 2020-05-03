import 'package:flutter/material.dart';
import 'package:rentcar_app/ui/widget/layouts_start.dart';
import 'model/car.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() => runApp(MyApp());

var currentCar = carList.cars[0];

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();

}

class _TestAppState extends State<TestApp> {
  final databaseReference = Firestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void getData() async {
    databaseReference
        .collection("car")
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));
    });
  }
}




class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: <Widget>[
          TestApp(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: LayoutStarts(),
    );
  }
}










