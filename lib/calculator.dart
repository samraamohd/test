import 'package:flutter/material.dart';
import 'package:untitled/calbtn.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 20),
                  ))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Calbtn('7', onBtn),
                Calbtn('8', onBtn),
                Calbtn('9', onBtn),
                Calbtn('/', onOper),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Calbtn('4', onBtn),
                Calbtn('5', onBtn),
                Calbtn('6', onBtn),
                Calbtn('*', onOper),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Calbtn('1', onBtn),
                Calbtn('2', onBtn),
                Calbtn('3', onBtn),
                Calbtn('+', onOper),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Calbtn('0', onBtn),
                Calbtn('.', onBtn),
                Calbtn('-', onOper),
                Calbtn('=', onEq),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String op = '';
  String lhs = '';
  cal(String lhs, String rhs, String op) {
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);
    if (op == "+") {
      double res = LHS + RHS;
      return res.toString();
    } else if (op == "/") {
      double res = LHS / RHS;
      return res.toString();
    } else if (op == "-") {
      double res = LHS - RHS;
      return res.toString();
    } else if (op == "*") {
      double res = LHS * RHS;
      return res.toString();
    }
    return "";
  }

  onOper(txt) {
    if (op.isEmpty) {
      lhs = result;
      op = txt;
    } else {
      String res = cal(lhs, result, op);
      lhs = res;
      op = txt;
    }
    result = '';
    print(lhs);
    setState(() {});
  }

  onEq(txt) {
    print(lhs);
    result = cal(lhs, result, op);
    op = txt;
    setState(() {});
  }

  onBtn(txt) {
    if (op == "=") {
      op = "";
      lhs = "";
      result = "";
    }
    result += txt;
    setState(() {});
  }
}
