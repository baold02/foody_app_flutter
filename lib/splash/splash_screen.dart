import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Screens/dat_ban_screen.dart';
import 'package:foody_app_flutter/Screens/select_role_screen.dart';

import '../Login/login_screen.dart';

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
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
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
