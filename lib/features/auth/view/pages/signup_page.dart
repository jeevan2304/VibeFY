import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_pallette.dart';
import 'package:spotify/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify/features/auth/view/widgets/custom_field.dart';

class  SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose(){
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState!.validate();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up.',
              style: TextStyle(
                  fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30,),
            CustomField(
              hintText: 'Name',
              controller: nameController,
            ),
            const SizedBox(height: 15,),
            CustomField(hintText: 'Email',
            controller : emailController,
            ),
            const SizedBox(height: 15,),
            CustomField(hintText: 'Password',
              controller: passwordController,
            isObscureText: true,),
            const SizedBox(height: 15,),
            AuthGradientButton(
              buttonText: 'Sign Up',
                onTap: (){},
            ),
            const SizedBox(height: 15,),
            RichText(text: TextSpan(text: 'Already have an account? ',
              style: Theme.of(context).textTheme.titleMedium,
              children:const[
                TextSpan(text: 'Sign In',
                    style: TextStyle(color: Pallete.gradient2,
                    fontWeight: FontWeight.bold,),
                ),
              ],

            ),
            ),
          ],
        ),
        ),
      ),
    );

  }
}
