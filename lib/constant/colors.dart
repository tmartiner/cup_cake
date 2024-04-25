// -----Constant Colors-----\\

import 'package:flutter/material.dart';

const vPrimaryColor = Color(0xFFF8A1D1);
const vSecondaryColor = Color(0xFFF750E6);
const vTertiaryColor = Color(0xFFF4F4EC);
const vQuaternaryColor = Color(0xFF151515);
const vQuinternaryColor = Color(0xFFF4BBDA);
const vGrayLColor = Color(0xFFEDEBEB);
const vGrayDColor = Color(0xFF545454);
const vShadowDColor = Color.fromARGB(255, 240, 47, 208);

// -----Constant gradient-----\\

const backgroundGradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  stops: [0.16, 0.98],
  colors: [
    Color(0xFFF8A1D1),
    Color(0xFFEA5DF7),
  ],
);
const backgroundGradientTwo = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  stops: [0.02, 0.68],
  colors: [
    Color(0xFFF8A1D1),
    Color(0xFFA74AF4),
  ],
);
const productCardBg = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.02, 0.56, 0.88],
  colors: [
    Color(0xFF464646),
    Color(0xFF714D9C),
    Color(0xFFA74AF4),
  ],
);
