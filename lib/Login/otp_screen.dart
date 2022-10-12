import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Screens/dat_ban_screen.dart';

import 'change_password_screen.dart';
class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(color: Colors.green[700]),
                        child: Center(
                          child: Image.asset(
                            'img/a.png',
                            width: 70,
                            height: 70,
                          ),
                        )),
                    Container(
                      width: 340,
                      height: 330,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Text('NHẬP MÃ OTP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text('Xin Mời Bạn Nhập Mã OTP Chúng Tôi'),
                          Text('Đã Gửi Đến Số 012345667'),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: TextField(
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Colors.white)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                child: TextField(
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Colors.white)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                child: TextField(
                                  onChanged: (value){
                                    if(value.length == 1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Colors.white)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                child: TextField(
                                  onChanged: (value){
                                    if(value.length == 1){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Colors.white)),
                                  ),
                                ),
                              ),


                            ],
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                            onTap: (){},
                            child: Text('GỬI LẠI MÃ OTP',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[600]
                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          Text('OTP Có Hiệu Lực Trong 00:00',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )

          ),
        ],
      ),
    );
  }
}
