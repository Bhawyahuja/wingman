import 'package:flutter/material.dart';
import 'package:wingman/features/auth/login/ui/login_page.dart';
import 'package:wingman/features/auth/verification/ui/verification_page.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class AuthRoutes {
  static const String login = 'auth/login';
  static const String verification = 'auth/verification';
}

class AuthNavigator extends StatefulWidget {
  const AuthNavigator({Key? key}) : super(key: key);

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}

class _AuthNavigatorState extends State<AuthNavigator> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = _navigatorKey.currentState!.canPop();
        if (canPop) _navigatorKey.currentState!.pop();
        return !canPop;
      },
      child: Navigator(
        key: _navigatorKey,
        initialRoute: AuthRoutes.login,
        onUnknownRoute: (RouteSettings settings) {
          return;
        },
        onGenerateRoute: (RouteSettings settings) {
          late WidgetBuilder builder;
          switch (settings.name) {
            case AuthRoutes.login:
              builder = (BuildContext _) => const LoginPage();
              break;
            case AuthRoutes.verification:
              builder = (BuildContext _) {
                String mobileNumber = settings.arguments as String;
                return VerificationPage(mobileNumber: mobileNumber);
              };
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
