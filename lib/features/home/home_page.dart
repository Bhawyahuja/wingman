import 'package:flutter/material.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/generated/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(Assets.assetsAppLogo),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We build responsive & scalable websites",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
