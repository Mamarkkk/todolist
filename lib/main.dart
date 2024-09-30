import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp(const ToDoListApp());
}

class ToDoListApp extends StatefulWidget {
  const ToDoListApp({super.key});

  @override
  State <ToDoListApp> createState() =>  ToDoListAppState();
}

class  ToDoListAppState extends State <ToDoListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list application from I-BIT',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}















