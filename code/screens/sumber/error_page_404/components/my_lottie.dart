import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class MyLottieWidget extends StatelessWidget {
  const MyLottieWidget({
    super.key,
    required this.size,
    required this.picNum,
  });

  final Size size;
  final String picNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: size.width,
      height: size.height / 2.6,
      child: Lottie.asset(
          'code/screens/sumber/error_page_404/assets/lottie/$picNum.json'),
    );
  }
}
