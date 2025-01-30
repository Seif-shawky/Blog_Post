import 'package:blog_projectbased/core/secretes/supabase_secretes.dart';
import 'package:blog_projectbased/core/themes/theme.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      url: SupaBaseSecretes.supabaseUrl, anonKey: SupaBaseSecretes.anonkeyUrl);
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
      home: LoginPage(),
    );
  }
}
