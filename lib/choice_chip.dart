import 'package:flutter/material.dart';

class choice extends StatefulWidget {
  const choice({Key? key}) : super(key: key);

  @override
  State<choice> createState() => _choiceState();
}

class _choiceState extends State<choice> {
  bool _isselect = false;
  var _isChipSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('chip'),
        ),
        body: Center(
          child: ChoiceChip(
            label: const Text('Choice Chip'),
            selected: _isChipSelected,
            avatar: _isChipSelected ? Icon(Icons.check) : null,
            onSelected: (_) {
              _isChipSelected = _;
              setState(() {});
            },
          ),
        ));
  }
}
