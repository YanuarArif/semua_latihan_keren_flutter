import 'package:flutter/material.dart';
import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.bgColor,
      required this.press});

  final String image, title;
  final int price;
  final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffefeff2),
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultBorderRadius))),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: TextStyle(color: Colors.black),
                )),
                SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  '\$' + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
