import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registraton_screen.dart';
import 'package:chat_app/screens/welcome.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
//flutter run --no-sound-null-safety
