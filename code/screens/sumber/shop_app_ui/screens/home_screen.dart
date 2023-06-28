import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'component/kategori.dart';
import 'component/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
              'code/screens/sumber/shop_app_ui/assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                'code/screens/sumber/shop_app_ui/assets/icons/Location.svg'),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '28/06 Purbalingga',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                  'code/screens/sumber/shop_app_ui/assets/icons/Notification.svg'))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Outfils terbaik untuk kamu",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: KolomPencarian(),
            ),
            const KategoriProduct()
          ],
        ),
      ),
    );
  }
}
