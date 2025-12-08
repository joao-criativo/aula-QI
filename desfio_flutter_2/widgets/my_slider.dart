import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  final ValueChanged<double?> value;

  const MySlider({super.key, required this.value});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      max: 20,
      divisions: 20,
      value: _value,
      label: _value.round().toString(),
      onChanged: (d){
        setState(() {
          _value = d;
          widget.value(d);
        });
      }
    );
  }
}