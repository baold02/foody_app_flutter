import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'otp_screen.dart';
const List<String> list = <String>['Việt Nam (+84)', 'Anh (+44)', 'Nhật Bản (+81)', 'Trung Quốc (+86)'];

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropdownValue = list.first;


  final phoneController = TextEditingController();
  var phoneErr = "vui lòng nhập đủ số điện thoại";
  var _phoneInvalid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
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
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'ĐĂNG KÝ',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Chúng Tôi Sẽ Gửi Mã Xác Nhận OTP'),
                        Text(
                          'Đến Số Điện Thoại Của Bạn Trong ít Phút',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   width: 270,
                        //   height: 50,
                        //   child: TextField(
                        //     decoration: InputDecoration(
                        //       suffixIcon: IconButton(
                        //         icon: Icon(Icons.keyboard_arrow_down),
                        //         onPressed: () {},
                        //       ),
                        //       filled: true,
                        //       fillColor: Colors.white,
                        //       hintText: "Việt Nam (+84)",
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(100),
                        //           borderSide: BorderSide(color: Colors.white)),
                        //     ),
                        //   ),
                        // ),

                        Container(
                          width: 270,
                          height: 50,
                          padding: EdgeInsets.only(left: 16,right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(100),
                           color:  Colors.white
                          ),
                          child: DropdownButton<String>(
                          value: dropdownValue,
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          elevation: 16,
                          underline: Container(
                          height: 2,

                          ),
                          onChanged: (String? value) {
                          setState(() {
                          dropdownValue = value!;
                          });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                          );
                          }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 270,
                          height: 70,
                          child: TextField(
                            controller: phoneController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 10,

                            decoration: InputDecoration(
                              errorText: _phoneInvalid? phoneErr : null,
                              suffixIcon: IconButton(
                                icon: Image.asset('img/close.png'),
                                onPressed: () {},
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Việt Nam (+84)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 270,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green[700],
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Valid();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 90),
                                    child: Text(
                                      "NHẬN OTP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Image.asset('img/mt.png',
                                      width: 10, height: 10),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'img/small.png',
                              width: 50,
                              height: 50,
                            ),
                            Text('Điều Khoản Sử Dụng')
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
  void Valid(){
    setState(() {
      if(phoneController.text.length<10){
       _phoneInvalid=true;
      }else{
        _phoneInvalid = false;
      }
      if(!_phoneInvalid){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
      }
    });
  }
}
