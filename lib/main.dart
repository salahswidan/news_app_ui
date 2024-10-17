import 'package:flutter/material.dart';
import 'package:new_app_ui/views/pages/custom_botton_navbar.dart';
import 'package:new_app_ui/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
      ),
      home: CustomBottomNavBar(),
    );
  }
}
