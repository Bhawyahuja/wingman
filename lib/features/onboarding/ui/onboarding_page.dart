import 'package:flutter/material.dart';
import 'package:wingman/components/custom_button.dart';
import 'package:wingman/components/custom_scaffold.dart';
import 'package:wingman/features/home/home_page.dart';

import '../../../components/custom__textfield.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
