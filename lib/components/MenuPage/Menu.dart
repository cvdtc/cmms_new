import 'package:cmms_ge/utils/warna.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdcolor,
        centerTitle: true,
        title: Text('Menu'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black26)),
            child: Row(
              children: <Widget>[
                Icon(Icons.ac_unit_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mesin',
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black26)),
            child: Row(
              children: <Widget>[
                Icon(Icons.ac_unit_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Histori Masalah',
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
