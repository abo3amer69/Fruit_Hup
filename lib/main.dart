import 'package:flutter/material.dart';
import 'package:fruit_hup/features/splash/presentation/views/splash_view.dart';

import 'core/helper_functions/on_generate_route.dart';

void main() {
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
