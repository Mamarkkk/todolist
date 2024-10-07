import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/components/my_button.dart';
import 'package:todolist_app/components/my_icon_btn.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //signin function here
  void signInUser() async {
    //add username and password tp firebase friday 11
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Hello, ready to get started!',
                style: textTitle,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Please sign-in with your email and password.',
                style: textSubTitle,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                  obscureText: false,
                  labelText: 'Email'),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  obscureText: true,
                  labelText: 'Password'),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: GoogleFonts.lato(fontSize: 18, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signInUser,
                hinText: 'Sign In',
              ),
              MyButton(
                onTap: signInUser,
                hinText: 'Register',
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 035,
                    color: Colors.grey,
                  )),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Or Continue with',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 035,
                    color: Colors.grey,
                  )),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconBtn(
                    imagePath: 'assets/images/google_icon.png',
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  MyIconBtn(imagePath: 'assets/images/apple_icon.jpg,'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now.',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
