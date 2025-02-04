import 'package:blog_projectbased/core/themes/app_pallet.dart';
import 'package:blog_projectbased/features/auth/presentation/pages/login_page.dart';
import 'package:blog_projectbased/features/auth/presentation/widgets/auth_feild.dart';
import 'package:blog_projectbased/features/auth/presentation/widgets/auth_gradient_butoon.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(15.0),
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
              const AuthGradientButoon(
                buttonText: 'Sign up', onPressed: () {  },
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    LoginPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Sign In',
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
