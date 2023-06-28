import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/category.dart';

class KategoriProduct extends StatelessWidget {
  const KategoriProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          kategori.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding / 2),
            child: CategoryCard(
                icon: kategori[index].icon,
                title: kategori[index].title,
                press: () {}),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.press,
  });

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide.none,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
