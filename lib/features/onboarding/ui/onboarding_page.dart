import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wingman/components/custom_button.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/components/custom_snackbar.dart';
import 'package:wingman/features/auth/logic/auth_cubit.dart';
import 'package:wingman/features/onboarding/logic/onboarding_cubit.dart';

import '../../../components/custom__textfield.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: const OnboardingBody(),
    );
  }
}

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  late OnboardingCubit _cubit;
  late AuthCubit _authCubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<OnboardingCubit>(context);
    _authCubit = BlocProvider.of<AuthCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return BlocConsumer<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (message) {
            CustomSnackBar.show(context, message, icon: Icons.check);
            _authCubit.onboard();
          },
          failure: (e, message) {
            CustomSnackBar.show(context, message);
          },
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome",
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Looks like you are new here. Tell us a bit about yourself",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: _nameController,
                    hint: 'Enter your name',
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    controller: _emailController,
                    hint: "Enter your email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Submit",
                    showLoader: state == const OnboardingState.loading(),
                    onTap: () {
                      _cubit.submitProfile(
                        _nameController.text,
                        _emailController.text,
                      );
                    },
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
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
