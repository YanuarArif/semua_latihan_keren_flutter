import 'package:flutter/material.dart';
import '../animation/fade_animation.dart';
import '../components/error_texts.dart';
import '../components/my_appbar.dart';
import '../components/my_lottie.dart';
import '../components/tombol_bawah.dart';
import '../utils/my_colors.dart';
import '../utils/my_strings.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var leftPadding = 15.0;
    return Scaffold(
      appBar: MyAppBar(textTheme: textTheme),
      body: Container(
        margin: EdgeInsets.all(10),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: ErrorTexts(textTheme: textTheme),
            ),
            Align(
              alignment: Alignment.center,
              child: FadeAnimation(
                delay: 1.5,
                child: GestureDetector(
                  onTap: () {},
                  child: MyLottieWidget(
                    size: size,
                    picNum: '1',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: leftPadding, top: 30),
              child: FadeAnimation(
                delay: 1,
                child: Text(
                  MyStrings.mainErrorText,
                  style: textTheme.headline4,
                ),
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: FadeAnimation(
                delay: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: TombolBawah(
                    size: size,
                    textTheme: textTheme.headline5,
                    btnColor: MyColors.primaryColor,
                    page: SecondScreen(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
