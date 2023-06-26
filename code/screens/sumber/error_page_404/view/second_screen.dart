import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animation/fade_animation.dart';
import '../components/error_texts.dart';
import '../components/my_appbar.dart';
import '../components/my_lottie.dart';
import '../components/tombol_bawah.dart';
import '../utils/my_colors.dart';
import '../utils/my_strings.dart';
import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var leftPadding = 15.0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(textTheme: textTheme),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: 80,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    color: MyColors.secondryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40))),
              ),
            ),
            Positioned(
              top: 36,
              child: Container(
                width: size.width,
                height: size.height / 1.4,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(60))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: leftPadding),
                      child: ErrorTexts(textTheme: textTheme),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: leftPadding, top: 20, right: 15),
                      child: FadeAnimation(
                        delay: 1.5,
                        child: Text(
                          MyStrings.mainErrorText,
                          style: textTheme.headline4,
                        ),
                      ),
                    ),
                    FadeAnimation(
                        delay: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: MyLottieWidget(
                            size: size,
                            picNum: "2",
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height / 7,
                decoration: const BoxDecoration(
                    color: MyColors.secondryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: FadeAnimation(
                  delay: 0.5,
                  child: Center(
                    child: TombolBawah(
                        size: size,
                        textTheme:
                            textTheme.headline5?.copyWith(color: Colors.black),
                        btnColor: Colors.white,
                        page: FirstScreen()),
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
