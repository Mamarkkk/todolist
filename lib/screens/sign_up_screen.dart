import 'package:flutter/material.dart';
import 'package:todolist_app/components/my_button.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final re_passwordController = TextEditingController();

  void signUp () async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to KMUTNB COM',
            style: textTitle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'To get started, Please provide create an account.',
            style: textSubTitle,
          ),
          const SizedBox(
            height: 30,
          ),
          MyTextField(
              controller: nameController,
              hintText: 'Enter your name',
              obscureText: false,
              labelText: 'Name'),
          const SizedBox(height: 20,),
          MyTextField(
              controller: emailController,
              hintText: 'Enter your email',
              obscureText: false,
              labelText: 'Email'),
          const SizedBox(height: 20,),
          MyTextField(
              controller: nameController,
              hintText: 'Enter your password',
              obscureText: false,
              labelText: 'Password'),
          const SizedBox(height: 20,),
          MyTextField(
              controller: nameController,
              hintText: 'Enter your password again',
              obscureText: false,
              labelText: 'Re-password'),
          const SizedBox(height: 20,),
          MyButton(onTap: signUp, hinText: 'Register now'),
          const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Have a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      )),
                ],
              )
        ],
        
      ),
      
    );
  }
}
