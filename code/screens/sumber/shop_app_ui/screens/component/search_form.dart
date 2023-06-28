import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class KolomPencarian extends StatelessWidget {
  const KolomPencarian({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Cari disini..',
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                  'code/screens/sumber/shop_app_ui/assets/icons/Search.svg'),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: SizedBox(
                height: 45,
                width: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(defaultBorderRadius)))),
                    child: SvgPicture.asset(
                        'code/screens/sumber/shop_app_ui/assets/icons/Filter.svg')),
              ),
            )),
      ),
    );
  }
}

var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(defaultBorderRadius),
    borderSide: BorderSide.none);
