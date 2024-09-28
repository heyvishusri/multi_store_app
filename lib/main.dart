import 'package:flutter/material.dart';
import 'package:multi_store_app/auth/customer_signup.dart';
import 'package:multi_store_app/main_screens/customer_home.dart';
import 'package:multi_store_app/main_screens/supplier_home.dart';
import 'package:multi_store_app/main_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const WelcomeScreen(),
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (contex) => const WelcomeScreen(),
        '/customer_home': (contex) => const CustomerHomeScreen(),
        '/supplier_home': (contex) => const SupplierHomeScreen(),
        '/customer_signup': (contex) => const CustomerRegister(),
      },
    );
  }
}
