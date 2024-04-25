import 'package:cup_cake/constant/colors.dart';
import 'package:cup_cake/widgets/buttons.dart';
import 'package:cup_cake/widgets/glas_card_sheed.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  final String image;
  final String title;
  final int favorite;
  final String description;
  final double price;
  final double rating;
  const BottomSheetScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.favorite,
      required this.description,
      required this.price,
      required this.rating});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

Set<String> _selected = {"Small"};
int _itemCount = 1;

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  void updateSelected(Set<String> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 755,
            decoration: const BoxDecoration(
              color: vQuaternaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        Positioned(
          top: -15,
          right: 0,
          left: 0,
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: Image.asset(widget.image).image),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: vTertiaryColor.withOpacity(0.3),
                        ),
                        shape: BoxShape.circle,
                        color: vTertiaryColor.withOpacity(0.05)),
                    child: const Icon(
                      Icons.close,
                      size: 20,
                      color: vTertiaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                GlasCardSheed(
                  title: widget.title,
                  favorite: widget.favorite,
                  description: widget.description,
                  price: widget.price,
                  rating: widget.rating,
                ),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SegmentedButton(
                        showSelectedIcon: false,
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide.none),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          foregroundColor: MaterialStateProperty.all(
                              vGrayLColor), // Standard-Foreground-Farbe
                          backgroundColor: MaterialStateProperty.all(
                            vTertiaryColor.withOpacity(0.2),
                          ),
                        ).copyWith(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return vGrayLColor; // Farbe, wenn ausgewählt
                            }
                            return vGrayLColor
                                .withOpacity(0.4); // Standardfarbe
                          }),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return vTertiaryColor.withOpacity(
                                  0.25); // Hintergrundfarbe, wenn ausgewählt
                            }
                            return vTertiaryColor
                                .withOpacity(0.1); // Standardhintergrundfarbe
                          }),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity:
                              const VisualDensity(horizontal: -3, vertical: -1),
                        ),
                        segments: const <ButtonSegment<String>>[
                          ButtonSegment<String>(
                            value: "Small",
                            label: Text(
                              "Small",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ButtonSegment<String>(
                            value: "Medium",
                            label: Text(
                              "Medium",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ButtonSegment<String>(
                            value: "Large",
                            label: Text(
                              "Large",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                        selected: _selected,
                        onSelectionChanged: updateSelected,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _itemCount == 0
                                  ? null
                                  : setState(() => _itemCount--);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: vTertiaryColor.withOpacity(0.3),
                                  ),
                                  shape: BoxShape.circle,
                                  color: vTertiaryColor.withOpacity(0.05)),
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                                color: vTertiaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            _itemCount.toString(),
                            style: const TextStyle(
                                color: vTertiaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() => _itemCount++);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: vTertiaryColor.withOpacity(0.3),
                                  ),
                                  shape: BoxShape.circle,
                                  color: vTertiaryColor.withOpacity(0.05)),
                              child: const Icon(
                                Icons.add,
                                size: 20,
                                color: vTertiaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
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
                      child: Row(
                        children: [
                          const Text(
                            'Add to order for ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: vTertiaryColor),
                          ),
                          Container(
                            height: 30,
                            width: 30,
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
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: vTertiaryColor),
                          ),
                        ],
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
