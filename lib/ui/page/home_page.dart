import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () => setState(() {
                        _value = 0.5;
                      }),
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(value: _value, onAdd: onAddW1, onSub: onSubW1),
                W2(value: _value),
                W3(value: _value, onAdd: onAddW3, onSub: onSubW3)
              ],
            ),
          ),
        ],
      )),
    );
  }

  void onAddW1() {
    setState(() {
      _value += 0.1;
      _value = double.parse(_value.toStringAsFixed(1));
    });
  }

  void onSubW1() {
    setState(() {
      _value -= 0.1;
      _value = double.parse(_value.toStringAsFixed(1));
    });
  }

  void onAddW3() {
    setState(() {
      _value += 1;
      _value = double.parse(_value.toStringAsFixed(1));
    });
  }

  void onSubW3() {
    setState(() {
      _value -= 1;
      _value = double.parse(_value.toStringAsFixed(1));
    });
  }
}
