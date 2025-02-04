import 'package:blog_projectbased/core/themes/app_pallet.dart';
import 'package:flutter/material.dart';

class AuthGradientButoon extends StatelessWidget {
  final String buttonText;
<<<<<<< HEAD
  final VoidCallback onPressed;
  const AuthGradientButoon({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
=======
  const AuthGradientButoon({super.key, required this.buttonText});
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
