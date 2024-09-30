import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  
                  const SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot password?', style: GoogleFonts.lato(fontSize: 18,color: Colors.blue),),
                    ],
                  ),
                  const SizedBox(height: 25,),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Sign In", style: GoogleFonts.lato(color: Colors.white, fontSize: 16),)),
                    )
                  ),

                  const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
