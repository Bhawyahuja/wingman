import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wingman/components/custom_button.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/features/auth/logic/auth_cubit.dart';
import 'package:wingman/generated/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsAppLogo, scale: 1.6),
            const SizedBox(height: 20),
            Text(
              "We build responsive & scalable websites",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 48),
            CustomButton(
              text: "Logout",
              onTap: () {
                BlocProvider.of<AuthCubit>(context).logOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
