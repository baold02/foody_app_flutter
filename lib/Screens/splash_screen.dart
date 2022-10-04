import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Screens/login_screen.dart';
import 'package:foody_app_flutter/Screens/sing_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Future.delayed(const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
      },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('img/splash.png'),    fit: BoxFit.cover,),
        ),
        child: Center(
           child: Image.asset('img/a.png'),
        ),
      ),
    );
  }
}
