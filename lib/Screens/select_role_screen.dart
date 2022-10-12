import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Screens/dat_ban_screen.dart';
class RoleScreen extends StatelessWidget {
  const RoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),
                    Text('CHỌN VAI TRÒ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StaffPage(),));
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Image.asset('img/db.png'),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('LỄ TÂN',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                     ),
                    ),

                    SizedBox(height: 30,),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset('img/db.png'),
                    ),
                    SizedBox(height: 30,),
                    Text('ĐẦU BẾP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 30,),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset('img/db.png'),
                    ),
                    SizedBox(height: 30,),
                    Text('ADMIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),


                  ],
                ),
              ))
        ],
      ),
    );
  }
}
