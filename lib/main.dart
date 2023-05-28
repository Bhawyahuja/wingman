import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wingman/app_config/app_routes.dart';
import 'package:wingman/features/auth/auth_navigator.dart';
import 'package:wingman/features/auth/logic/auth_cubit.dart';
import 'package:wingman/features/home/home_page.dart';
import 'package:wingman/features/onboarding/ui/onboarding_page.dart';
import 'package:wingman/features/splash/ui/splash_page.dart';
import 'package:wingman/utils/app_theme.dart';
import 'package:wingman/utils/simple_bloc_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  Bloc.observer = SimpleBlocDelegate();
  runApp(
    BlocProvider(
      create: (context) => AuthCubit()..init(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.when(
            uninitialized: () => const SplashPage(),
            unauthenticated: () => const AuthNavigator(),
            authenticated: () => const OnboardingPage(),
            onboarded: () => const HomePage(),
          );
        },
      ),
      routes: AppRoutes.routes,
    );
  }
}
