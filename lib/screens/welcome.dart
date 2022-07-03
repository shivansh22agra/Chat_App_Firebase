import 'package:chat_app/components/Rounded_Button.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registraton_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "Welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    // animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    controller?.forward();
    // animation?.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller?.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller?.forward();
    //   }
    // });

    controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller!.value * 100,
                  ),
                ),
                Expanded(
                  child: TyperAnimatedTextKit(
                    text: ["Flash Chat"],
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            ResueMatrial(color: Colors.lightBlueAccent,text: "Log In",navigation: LoginScreen.id,),
            ResueMatrial(color: Colors.blueAccent, navigation: RegistrationScreen.id, text: "Register"),
           
          ],
        ),
      ),
    );
  }
}

