import 'package:blog_projectbased/core/themes/theme.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/signup_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog_App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkthememode,
      home:  SignUpPage(),
    );
  }
}
