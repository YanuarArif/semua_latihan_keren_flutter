import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Profile",
          style: Theme.of(context).textTheme.headline1,
        ),
        Icon(
          IconlyLight.profile,
          size: 40,
        ),
      ],
    );
  }
}
