import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wingman/components/custom__textfield.dart';
import 'package:wingman/components/custom_button.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/components/custom_snackbar.dart';
import 'package:wingman/features/auth/auth_navigator.dart';
import 'package:wingman/features/auth/login/logic/login_cubit.dart';
import 'package:wingman/generated/assets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _controller = TextEditingController();
  late LoginCubit _cubit;
  String _isoCode = "IN";

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of<LoginCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (mobileNumber, message) {
            CustomSnackBar.show(context, message, icon: Icons.check);
            Navigator.pushNamed(
              context,
              AuthRoutes.verification,
              arguments: mobileNumber,
            );
          },
          failure: (e, message) => CustomSnackBar.show(context, message),
        );
      },
      builder: (context, state) {
        return CustomScaffold(
          body: SingleChildScrollView(
            child: Container(
              height: mediaQuery.size.height - 40 - mediaQuery.padding.vertical,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.assetsAppLogo, scale: 1.6),
                  const SizedBox(height: 40),
                  Text(
                    "Get Started",
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "We'll text you a code to verify your phone",
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      CountryCodePicker(
                        onChanged: (value) => _isoCode = value.code ?? "IN",
                        builder: (value) => Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: theme.indicatorColor),
                          ),
                          child: Text(
                            '$value',
                            style: theme.textTheme.titleSmall!.copyWith(
                              color: theme.secondaryHeaderColor,
                            ),
                          ),
                        ),
                        initialSelection: _isoCode,
                        textStyle: theme.textTheme.bodySmall,
                        showFlag: false,
                        showFlagDialog: true,
                        favorite: const ['+91'],
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 4,
                        child: CustomTextField(
                          controller: _controller,
                          hint: 'Enter Mobile Number',
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Continue",
                    showLoader: state == const LoginState.loading(),
                    onTap: () => _cubit.login(_isoCode, _controller.text),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
