import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class TestTab extends StatelessWidget {
  //const TestTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Badge(
                  badgeContent: Text('0'),
                  child: Icon(Icons.icecream),
                ),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
