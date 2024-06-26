import 'package:flutter/material.dart';
import 'package:flutter_apis/utils/responsive.dart';
import 'package:flutter_apis/widgets/circle.dart';
import 'package:flutter_apis/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
          Positioned(
            top: -pinkSize * 0.4,
            right: -pinkSize * 0.2,
            child: Circle(
              size: pinkSize,
              colors: const [
                Colors.pinkAccent,
                Colors.pink,
              ],
            ),
          ),
          Positioned(
            top: -orangeSize*0.55,
            left: -orangeSize*0.15,
            child: Circle(
              size: orangeSize,
              colors: const [
                Colors.orange,
                Colors.deepOrangeAccent,
              ],
            ),
          ),

          Positioned(
            top: pinkSize * 0.35,
            child: Column(
              children: [
                IconContainer(
                  size: responsive.wp(17),
                ),
                const SizedBox(height: 30,
                ),
                const Text("Hello Again\nWelcome Back!", textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                  ),
                )
              ],
            )
            )
          ],
        ),
        ),
    );
  }
}