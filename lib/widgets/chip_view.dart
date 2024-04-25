import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/widgets/chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChipView extends StatefulWidget {
  const ChipView({super.key});

  @override
  State<ChipView> createState() => _ChipViewState();
}

class _ChipViewState extends State<ChipView> {
  bool _isSelected = false;
  final List<OwenChip> product = [
    OwenChip(name: "Sweet"),
    OwenChip(name: "Salty"),
    OwenChip(name: "Drink"),
    OwenChip(name: "Burger"),
    OwenChip(name: "Capcake"),
    OwenChip(name: "Nuggets"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: _isSelected
                      ? vTertiaryColor.withOpacity(0.5)
                      : vQuinternaryColor.withOpacity(0.1),
                  border: Border.all(
                    color: vTertiaryColor.withOpacity(0.3),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        width: 30,
                        height: 30,
                        "assets/details/essen.png",
                        color: _isSelected ? vGrayDColor : vGrayLColor,
                      ),
                      Text(
                        "All categories",
                        style: TextStyle(
                            color: _isSelected ? vGrayDColor : vGrayLColor,
                            fontSize: 12),
                      ),
                      Icon(
                        const IconData(0xe098, fontFamily: 'MaterialIcons'),
                        size: 20,
                        color: _isSelected ? vGrayDColor : vGrayLColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (context, index) {
                return product[index];
              },
            ),
          ),
        ),
      ],
    );
  }
}
