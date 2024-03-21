import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;

  const Circle({key, required this.size, required this.colors})
  // ignore: unnecessary_null_comparison
  : assert(size!=null && size > 0 ),
  // ignore: unnecessary_null_comparison
  assert(colors!=null && colors.length >= 2),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
      ),
    );
  }
}