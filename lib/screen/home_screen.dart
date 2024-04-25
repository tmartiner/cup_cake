import 'package:cup_cake/widgets/glas_card_start.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset("assets/hintergründe/bg_startscreen.png")
                      .image),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: -100,
            child: Container(
              height: 550,
              width: 550,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      "assets/grafiken/chick cupcakes_3D.png",
                    ).image),
              ),
            ),
          ),
          Positioned(
            bottom: 170,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.5,
                    image: Image.asset(
                      "assets/details/T2.png",
                    ).image),
              ),
            ),
          ),
          const GlasCard()
        ],
      ),
    );
  }
}
