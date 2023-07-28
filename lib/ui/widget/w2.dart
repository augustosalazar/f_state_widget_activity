import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: value - value.floor() >= 0.5 ? Colors.blueGrey : Colors.grey,
    );
  }
}
