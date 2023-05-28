

import 'package:flutter/material.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/generated/assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.assetsAppLogo),
          const Text("Wingman")
        ],
      ),
    );
  }
}
