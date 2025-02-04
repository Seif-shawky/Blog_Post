import 'package:blog_projectbased/core/themes/app_pallet.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/signup_pages.dart';
import 'package:blog_projectbased/features/auth/presentation/widgets/auth_feild.dart';
import 'package:blog_projectbased/features/auth/presentation/widgets/auth_gradient_butoon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => LoginPage(),
      ); //use when you want to go to login page
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
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
              const AuthGradientButoon(buttonText: 'Sign in', onPressed: () {  },),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SignUpPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
