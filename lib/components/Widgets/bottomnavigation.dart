import 'package:cmms_ge/components/DasboardPage/Dashboard.dart';
import 'package:cmms_ge/components/MasalahPage/Masalah.dart';
import 'package:cmms_ge/components/ScanPage/Scan.dart';
import 'package:cmms_ge/utils/warna.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentTab = 0;
  List<Widget> _currentPage = <Widget>[
    DashboardPage(),
    ScanBarcode(),
    MasalahPage(),
    DashboardPage()
  ];
  PageStorageBucket _bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backPressed,
      child: Scaffold(
        body: PageStorage(
          bucket: _bucket,
          child: _currentPage[_currentTab],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.white,
          selectedIconTheme: IconThemeData(color: thirdcolor),
          selectedItemColor: thirdcolor,
          unselectedItemColor: thirdcolor.withOpacity(.40),
          onTap: (value){
            setState((){_currentTab = value;});
          },
          currentIndex:_currentTab,
          items: [
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Scan',
              icon: Icon(Icons.qr_code_2)
            ),
            BottomNavigationBarItem(
              label: 'Masalah',
              icon: Icon(Icons.assignment_late)
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.menu)
            )
          ]
        )
      )
    );
  }

  Future<bool> _backPressed() async{
    DateTime currentTime = DateTime.now();
    bool backbutton = DateTime == null || currentTime.difference(DateTime.now()) > Duration(seconds: 3);
    if(backbutton){
      return false;
    }else{
      return true;
    }
  }
}