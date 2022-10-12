import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Models/bookingModel.dart';
import 'package:foody_app_flutter/splash/splash_screen.dart';
import 'package:foody_app_flutter/controllers/user_controllor.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'Screens/dat_ban_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => BookingViewModel()..init(),
  child: const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ),
  ),);
}
