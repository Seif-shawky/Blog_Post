import 'package:blog_projectbased/core/themes/app_pallet.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/widgets/auth_feild.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/widgets/auth_gradient_butoon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => SignUpPage(),
      ); //use when you want to go to sign up page
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 90),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              AuthFeild(
                hintaya: 'Name',
                controller: nameController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthFeild(
                hintaya: 'Email',
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthFeild(
                hintaya: 'Password',
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButoon(),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: ' Sign In',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
