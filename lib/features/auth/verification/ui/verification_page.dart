import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wingman/components/custom_button.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/components/custom_snackbar.dart';
import 'package:wingman/features/auth/verification/logic/verification_cubit.dart';
import 'package:wingman/features/home/home_page.dart';
import 'package:wingman/features/onboarding/ui/onboarding_page.dart';
import 'package:wingman/generated/assets.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: const VerificationBody(),
    );
  }
}

class VerificationBody extends StatefulWidget {
  const VerificationBody({Key? key}) : super(key: key);

  @override
  State<VerificationBody> createState() => _VerificationBodyState();
}

class _VerificationBodyState extends State<VerificationBody> {
  final TextEditingController _controller = TextEditingController();

  late VerificationCubit _cubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<VerificationCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return BlocConsumer<VerificationCubit, VerificationState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (profileExists) {
            if (profileExists) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnBoardingPage(),
                ),
              );
            }
          },
          failure: (e, message) => CustomSnackBar.show(context, message),
        );
      },
      builder: (context, state) {
        return CustomScaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Container(
              height: mediaQuery.size.height -
                  40 -
                  mediaQuery.padding.vertical -
                  AppBar().preferredSize.height,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.assetsAppLogo, scale: 1.6),
                  const SizedBox(height: 40),
                  Text(
                    "Enter OTP",
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  //TODO: add custom number
                  Text(
                    "OTP has been sent to +91 xxxxxxxx",
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    onChanged: (value) {},
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    textStyle: theme.textTheme.bodySmall,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      fieldHeight: 48,
                      fieldWidth: 48,
                      activeColor: theme.indicatorColor,
                      inactiveColor: theme.indicatorColor,
                      selectedColor: theme.indicatorColor.withOpacity(0.4),
                      borderWidth: 1,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Verify",
                    showLoader: state == const VerificationState.loading(),
                    onTap: () => _cubit.verifyOtp(_controller.text),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
