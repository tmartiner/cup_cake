import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/screen/modal_bottom.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String description;
  final String subtitle;
  final double price;
  final double rating;
  final int favorite;
  final String image;

  const ProductCard(
      {super.key,
      required this.name,
      required this.description,
      required this.subtitle,
      required this.price,
      required this.favorite,
      required this.image,
      required this.rating});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => BottomSheetScreen(
                      image: widget.image,
                      title: widget.name,
                      favorite: widget.favorite,
                      description: widget.description,
                      price: widget.price,
                      rating: widget.rating,
                    ),
                  );
                },
                child: Container(
                  height: 250,
                  width: 180,
                  decoration: BoxDecoration(
                    gradient: productCardBg,
                    border: Border.all(
                      color: vTertiaryColor.withOpacity(0.3),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: Image.asset(
                                  widget.image,
                                ).image),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: vTertiaryColor),
                            ),
                            Text(
                              widget.subtitle,
                              style: TextStyle(
                                fontSize: 12,
                                color: vTertiaryColor.withOpacity(0.5),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                          width: 160,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
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
                                  Text(
                                    widget.price.toStringAsFixed(2),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: vTertiaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: vTertiaryColor.withOpacity(0.4),
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    widget.favorite.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: vTertiaryColor.withOpacity(0.4),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
      ],
    );
  }
}
