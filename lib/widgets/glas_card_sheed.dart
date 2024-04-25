import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GlasCardSheed extends StatefulWidget {
  final String title;
  final int favorite;
  final String description;
  final double price;
  final double rating;
  const GlasCardSheed({
    super.key,
    required this.title,
    required this.favorite,
    required this.description,
    required this.price,
    required this.rating,
  });

  @override
  State<GlasCardSheed> createState() => _GlasCardSheedState();
}

class _GlasCardSheedState extends State<GlasCardSheed> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
          height: 350,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: vTertiaryColor.withOpacity(0.4),
                      size: 18,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.favorite.toString(),
                      style: TextStyle(
                        color: vTertiaryColor.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 22,
                        color: vTertiaryColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: vTertiaryColor.withOpacity(0.5),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
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
                            fontSize: 18,
                            color: vTertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 32,
                  color: vTertiaryColor.withOpacity(0.4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingredients",
                          style:
                              TextStyle(color: vTertiaryColor.withOpacity(0.6)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                width: 20,
                                height: 20,
                                "assets/details/frisch.png",
                                color: vTertiaryColor.withOpacity(0.8),
                              ),
                              Image.asset(
                                width: 20,
                                height: 20,
                                "assets/details/wein.png",
                                color: vTertiaryColor.withOpacity(0.8),
                              ),
                              Image.asset(
                                width: 20,
                                height: 20,
                                "assets/details/essen-und-trinken.png",
                                color: vTertiaryColor.withOpacity(0.8),
                              ),
                              Image.asset(
                                width: 20,
                                height: 20,
                                "assets/details/kein-alkohol.png",
                                color: vTertiaryColor.withOpacity(0.8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style:
                              TextStyle(color: vTertiaryColor.withOpacity(0.6)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: widget.rating,
                              unratedColor: vTertiaryColor.withOpacity(0.4),
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: vTertiaryColor.withOpacity(0.4),
                              ),
                              itemCount: 5,
                              itemSize: 20.0,
                              direction: Axis.horizontal,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.rating.toStringAsFixed(1),
                              style: TextStyle(
                                  color: vTertiaryColor.withOpacity(0.4),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
                ////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
