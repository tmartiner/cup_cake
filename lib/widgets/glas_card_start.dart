import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/screen/products.dart';
import 'package:cup_cake/widgets/buttons.dart';
import 'package:flutter/material.dart';

class GlasCard extends StatelessWidget {
  const GlasCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
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
              height: 210,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const Text(
                      "Feeling Snackish Today?",
                      style: TextStyle(
                        fontSize: 22,
                        color: vTertiaryColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Explore Angi's most popular snack selection and get instantly happy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: vTertiaryColor.withOpacity(0.5),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: backgroundGradient,
                        border: Border.all(
                          color: vTertiaryColor.withOpacity(0.3),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: vShadowDColor,
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
                          'Oder Now',
                          style: TextStyle(
                              fontSize: 20,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
