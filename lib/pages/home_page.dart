import 'package:flutter/material.dart';
import 'package:flutter_apis/widgets/circle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
          Positioned(
            top: -140,
            right: -50,
            child: Circle(
              size: 340,
              colors: const [
                Colors.pinkAccent,
                Colors.pink,
              ],
            ),
          ),
          Positioned(
            top: -100,
            left: -50,
            child: Circle(
              size: 240,
              colors: const [
                Colors.orange,
                Colors.deepOrangeAccent,
              ],
            ),
          )
          ],
        ),
        ),
    );
  }
}