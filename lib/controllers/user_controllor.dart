import 'package:flutter/material.dart';

import '../Models/user_model.dart';

class UserControllor with ChangeNotifier{
   List<UserModel> _list = [
     UserModel(
       name: 'LE DUC BAO',
       sn: '03/07/2002',
       phone:'0343 223346',
       time: '21:00',
       sl: '5',
       slNam: '3',
       slNu: '2'
     ),
     UserModel(
         name: 'NGUYEN VAN NAM',
         sn: '03/07/2000',
         phone:'0333 456667',
         time: "17:00",
         sl: '7',
         slNam: '3',
         slNu: '4'
     ),
     UserModel(
         name: 'DUONG NGOC ANH',
         sn: '03/21/2001',
         phone:'0394 1266555',
         time: "16:00",
         sl: '8',
         slNam: '4',
         slNu: '4'
     ),
     UserModel(
         name: 'NGUYEN VAN QUAN',
         sn: '03/21/1997',
         phone:'0394 126622',
         time: "19:00",
         sl: '8',
         slNam: '4',
         slNu: '4'
     )
   ];

   List<UserModel?> get allUser => [..._list];

}