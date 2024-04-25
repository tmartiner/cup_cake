import 'package:cup_cake/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCardView extends StatefulWidget {
  const ProductCardView({super.key});

  @override
  State<ProductCardView> createState() => _ProductCardViewState();
}

class _ProductCardViewState extends State<ProductCardView> {
  final List<ProductCard> productcard = [
    const ProductCard(
      name: "Mogli's Cup",
      description:
          "Das zauberhafte Eis in Gestalt einer Katze, verführt mit cremiger Köstlichkeit und verspieltem Charme. Ein kunstvoll geformtes Meisterwerk, das den Gaumen mit jedem Bissen verwöhnt und die Herzen aller Katzenliebhaber im Sturm erobert.",
      subtitle: "Starwberry ice cream",
      price: 8.99,
      rating: 4.0,
      favorite: 200,
      image: "assets/grafiken/cat cupcakes_3D.png",
    ),
    const ProductCard(
      name: "Balu's Cup",
      description:
          "Balu's Cup, die süße Versuchung aus Pistazie, ist wie eine zarte Wolke, auf der eine Kugel voller Süße sanft schwebt. Ein himmlisches Genusserlebnis, das den Gaumen mit seinem cremigen Geschmack und dem Hauch von Pistazien verzaubert.",
      subtitle: "Pistachio ice cream",
      price: 8.99,
      rating: 3.4,
      favorite: 120,
      image: "assets/grafiken/Ice.cream.png",
    ),
    const ProductCard(
      name: "Cornelius",
      description:
          "Cornelius, das süße Vergnügen: Ein cremiges Vanille-Cornetto, verlockend in seiner Zartheit. Ein Gaumenschmaus, der mit jedem Bissen puren Genuss verspricht.",
      subtitle: "Vanilla cornetto",
      price: 6.90,
      rating: 3.1,
      favorite: 280,
      image: "assets/grafiken/Icecream_3D.png",
    ),
    const ProductCard(
      name: "Sticky the Frozen",
      description:
          "Sticky the Frozen: Ein köstliches Nougat-Stäbcheneis, das cremig zergeht. Ein süßer Genuss, der den Gaumen verführt.",
      subtitle: "Nuggat cream",
      price: 3.90,
      rating: 2.3,
      favorite: 350,
      image: "assets/grafiken/ice cream stick_3D.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: productcard.length,
        itemBuilder: (context, index) {
          return productcard[index];
        },
      ),
    );
  }
}
