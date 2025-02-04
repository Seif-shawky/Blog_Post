import 'package:blog_projectbased/core/secretes/supabase_secretes.dart';
import 'package:blog_projectbased/core/themes/theme.dart';
<<<<<<< HEAD
import 'package:blog_projectbased/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_projectbased/features/auth/domain/usecases/user_sign_up.dart';
import 'package:blog_projectbased/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/login_page.dart';
import 'package:blog_projectbased/features/auth/repositories/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
=======
import 'package:blog_projectbased/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
<<<<<<< HEAD
    url: SupaBaseSecretes.supabaseUrl,
    anonKey: SupaBaseSecretes.anonkeyUrl,
  );

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthBloc(
          userSignUp: UserSignUps(
            AuthRepositoryImpl(
              AuthRemoteDataSourceImplement(supabase.client),
            ),
          ),
        ),
      ),
    ],
    child: const MainApp(),
  ));
=======
      url: SupaBaseSecretes.supabaseUrl, anonKey: SupaBaseSecretes.anonkeyUrl);
  runApp(const MainApp());
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
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
