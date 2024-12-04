import 'package:flutter/material.dart';
import 'package:fruit_hup/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hup/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hup/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
