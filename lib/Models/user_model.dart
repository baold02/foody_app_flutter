import 'package:flutter/material.dart';

class UserModel with ChangeNotifier{
  String? name;
  String? sn;
  String? phone;
  String? time;
  String? Date;
  String? sl;
  String? slNam;
  String ? slNu;

  UserModel({this.name, this.sn, this.phone,this.time,this.Date,this.sl, this.slNam, this.slNu});

}



