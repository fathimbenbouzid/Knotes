import 'package:flutter/material.dart';
import 'package:knotesapp/views/Search.dart';
import 'package:knotesapp/views/Settings.dart';
import 'package:knotesapp/views/forget_password.dart';
import 'package:knotesapp/views/home.dart';
import 'package:knotesapp/views/login.dart';
import 'package:knotesapp/views/onbording.dart';
import 'package:knotesapp/views/signup.dart';

import 'Nav/Custom_navigation_bar.dart';
import 'Nav/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff6A3EA1)),
      debugShowCheckedModeBanner: false,
      home: const OnbordingView(),
      routes: {
        '/OnBording': (context) => const OnbordingView(),
        '/Login': (context) => const LoginView(),
        '/Signup': (context) => const SignupView(),
        '/Home': (context) => const HomePage(),
        '/Forget': (context) => ForgetPasswordView(),
        '/Nav': (context) => const CustomBottomNavBAr(),
        '/Settings': (context) => const SettingsPage(),
        '/Search': (context) => const SearchPage(),
      },
    );
  }
}
