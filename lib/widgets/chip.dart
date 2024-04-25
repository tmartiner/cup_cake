import 'dart:ui';

import 'package:cup_cake/constant/colors.dart';
import 'package:flutter/material.dart';

class OwenChip extends StatefulWidget {
  final String name;

  OwenChip({
    super.key,
    required this.name,
  });

  @override
  State<OwenChip> createState() => _ChipState();
}

class _ChipState extends State<OwenChip> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelect = !_isSelect;
        });
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: _isSelect
                  ? vTertiaryColor.withOpacity(0.5)
                  : vQuinternaryColor.withOpacity(0.1),
              border: Border.all(
                color: vTertiaryColor.withOpacity(0.5),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
              child: Text(
                widget.name,
                style: TextStyle(
                  color: _isSelect ? vGrayDColor : vGrayLColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
