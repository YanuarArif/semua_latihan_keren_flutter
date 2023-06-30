import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../models/product.dart';
import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'code/screens/sumber/shop_app_ui/assets/icons/Heart.svg',
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4, // 40%
            fit: BoxFit.cover,
          ),
          SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SizedBox(width: defaultPadding),
                        Text(
                          '\$' + product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                          'A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8) to 13 cm) long and usually having 2-5 buttons.'),
                    ),
                    const Text(
                      'Colors',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: Color(0xffbee8ea),
                          isActice: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xff141b4a),
                          isActice: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xfff4e5c3),
                          isActice: false,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: defaultPadding),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor, shape: StadiumBorder()),
                            child: Text('Tambah ke Keranjang')),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
