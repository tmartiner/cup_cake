import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/screen/products.dart';
import 'package:cup_cake/widgets/buttons.dart';
import 'package:flutter/material.dart';

class GlasCardProducts extends StatelessWidget {
  const GlasCardProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Offset _offset = const Offset(-0.60, 0.0008);

    return Stack(
      children: [
        Positioned(
          top: 224,
          left: -12,
          right: -50,
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.0008) // perspective
                  ..rotateX(_offset.dy)
                  ..rotateY(_offset.dx),
                alignment: FractionalOffset.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: vTertiaryColor.withOpacity(0.3),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        height: 225,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              ),
              const CardText(),
            ],
          ),
        ),
        Positioned(
          top: 280,
          left: 0,
          right: -160,
          child: Container(
            height: 225,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: Image.asset(
                    "assets/grafiken/Burger_3D.png",
                  ).image),
            ),
          ),
        ),
      ],
    );
  }
}

class CardText extends StatelessWidget {
  const CardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 55, right: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Angi's Yummy Burger",
                style: TextStyle(
                  fontSize: 16,
                  color: vTertiaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            "assets/grafiken/star.png",
                          ).image),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                      fontSize: 14,
                      color: vTertiaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 180,
            child: Text(
              "Delish vegan burger that tastes like heaven",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                color: vTertiaryColor.withOpacity(0.5),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 180,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        invertColors: true,
                        fit: BoxFit.cover,
                        image: Image.asset(
                          "assets/details/chinese-yuan_5926505.png",
                        ).image),
                  ),
                ),
                const Text(
                  "13.99",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: vTertiaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Container(
            height: 45,
            width: 120,
            decoration: BoxDecoration(
              gradient: backgroundGradientTwo,
              border: Border.all(
                color: vTertiaryColor.withOpacity(0.3),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: const [
                BoxShadow(
                  color: vSecondaryColor,
                  blurRadius: 15,
                  spreadRadius: 0.0,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                ),
              ],
            ),
            child: UnicornOutlineButton(
              strokeWidth: 1,
              radius: 8,
              gradient: const LinearGradient(
                colors: [vSecondaryColor, vTertiaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              child: const Text(
                'Add to order',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: vTertiaryColor),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsScreen(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
