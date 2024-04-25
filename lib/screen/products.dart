import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/widgets/chip_view.dart';
import 'package:cup_cake/widgets/gals_card_products.dart';
import 'package:cup_cake/widgets/product_card_view.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset("assets/hintergründe/bg_mainscreen.png")
                      .image),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 70,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 320,
                  child: Text(
                    "Choose Your Favorite Snack",
                    style: TextStyle(
                      fontSize: 24,
                      color: vTertiaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ChipView(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          const GlasCardProducts(),
          const Positioned(
            top: 510,
            left: 0,
            right: -160,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "We Recommend",
                style: TextStyle(
                  fontSize: 18,
                  color: vTertiaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: ProductCardView(),
          ),
        ],
      ),
    );
  }
}
