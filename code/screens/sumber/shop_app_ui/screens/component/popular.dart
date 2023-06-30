import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';
import 'product_card.dart';
import 'section_title.dart';

class Populer extends StatelessWidget {
  const Populer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Populer",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              contoh_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding / 2, right: defaultPadding / 2),
                child: ProductCard(
                  image: contoh_product[index].image,
                  title: contoh_product[index].title,
                  price: contoh_product[index].price,
                  bgColor: contoh_product[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
