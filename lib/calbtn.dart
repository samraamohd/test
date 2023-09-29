import 'package:flutter/material.dart';

class Calbtn extends StatelessWidget {
  String txt;
  Function onclick;
  Calbtn(this.txt, this.onclick);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.white, width: 3))),
      onPressed: () {
        onclick(txt);
      },
      child: Text(txt),
    ));
  }
}
