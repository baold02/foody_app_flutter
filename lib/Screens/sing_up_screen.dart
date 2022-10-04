import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('img/bg.png'),  fit: BoxFit.cover,),
        ),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(

                    color: Colors.green[700]),
                child:Center(
                  child:  Image.asset(
                    'img/a.png', width: 70,height: 70,
                  ),
                )
            ),
            Container(
              width: 340,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('ĐĂNG KÝ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Chúng Tôi Sẽ Gửi Mã Xác Nhận OTP'),
                  Text('Đến Số Điện Thoại Của Bạn Trong ít Phút',),
                  SizedBox(height: 20,),

                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
