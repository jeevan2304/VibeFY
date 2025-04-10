import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_pallette.dart';
import 'package:spotify/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify/features/auth/view/widgets/custom_field.dart';

class  LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose(){

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
                'Sign In.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30,),

              CustomField(hintText: 'Email',
                controller : emailController,
              ),
              const SizedBox(height: 15,),
              CustomField(hintText: 'Password',
                controller: passwordController,
                isObscureText: true,),
              const SizedBox(height: 15,),
              AuthGradientButton(
                buttonText: 'Sign In',
                onTap: (){},
              ),
              const SizedBox(height: 15,),
              RichText(text: TextSpan(text: 'Don\'t have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children:const[
                  TextSpan(text: 'Sign Up',
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
