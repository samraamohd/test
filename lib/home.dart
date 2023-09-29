import 'package:flutter/material.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.purple,
                  child: Text(
                    'samraa',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  color: Colors.purple,
                  child: Text(
                    'samraa',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
