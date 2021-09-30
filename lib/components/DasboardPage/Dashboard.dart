import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cmms_ge/utils/warna.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildBanner(screenHeight),
          _buildDashboard(screenHeight)
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 55, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'PT. Sinar Indogreen Kencana',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  SliverToBoxAdapter _buildBanner(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(1.0),
            color: thirdcolor,
            height: 150,
            width: 200,
            child: Image.asset(
              'assets/images/ge.png',
            ),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildDashboard(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Jumlah Masalah",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "123",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Jumlah Selesai",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "120",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
