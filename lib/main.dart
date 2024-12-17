import 'package:flutter/material.dart';
import 'screens/onbording.dart';
import 'screens/login.dart';
import 'screens/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/products': (context) =>  ProductListScreen(),
      },
    );
  }
}
