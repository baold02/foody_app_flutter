import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foody_app_flutter/Login/password_retrieval_screen.dart';
import 'package:foody_app_flutter/Login/sing_up_screen.dart';
import 'package:foody_app_flutter/Screens/select_role_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _showPass =false;
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  var _phoneErr = "số điện thoại không hợp lệ";
  var _passErr = "Mật khẩu không được để trống";
  var _phoneInvalid = false;
  var _passInvalid = false;

  @override
  Widget build(BuildContext context) {
    List imsges = ["f.png", "z.png", "g.png"];
    return Scaffold(
      body: SingleChildScrollView(
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
                      decoration: BoxDecoration(color:  Colors.green[700]),
                      child: Center(
                        child: Image.asset(
                          'img/a.png',
                          width: 70,
                          height: 70,
                        ),
                      )),
                SizedBox(
                  height: 1,
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    width: 340,
                    height: 340,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "ĐĂNG NHẬP",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                              errorText: _phoneInvalid ? _phoneErr : null,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Tài Khoản/Số Điện Thoại",
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
                          height: 60,
                            child: TextFormField(
                            obscureText: !_showPass,
                            controller: passController,
                            decoration: InputDecoration(
                              errorText: _passInvalid ? _passErr : null,
                              suffixIcon: IconButton(
                                icon: Image.asset('img/v.png',width: 30,height: 50,),
                                onPressed: (){showPass();},
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Mật Khẩu",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(23, 10, 30, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('img/icon.png'),
                                  Text('Lưu Đăng Nhập')
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RessetPass(),));
                                },
                                child: Text(
                                  'Quên mật Khẩu?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        //btn
                        Container(
                          width: 270,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    onCkeck();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 90),
                                    child: Text(
                                      "Đăng Nhập",
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
                        //btn
                      ],
                    ),
                  ),
                ),
               Container(
                 child:  Image.asset('img/vantay.png',width: 80,height:80,),
               ),
                SizedBox(
                  height: 130,
                ),
                //bottom
                Container(
                  alignment: Alignment.center,
                  width: 340,
                  height: 215,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Đăng Nhập Bằng Tài Khoản Liên Kết'),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: List<Widget>.generate(3, (index) {
                          return Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.deepOrangeAccent[500],
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage("img/" + imsges[index]),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Chưa Có Tài Khoản?",
                              style:
                                  TextStyle(color: Colors.grey[500], fontSize: 18),
                              children: [
                            TextSpan(
                              text: "Đăng Ký Ngay",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                                  recognizer: TapGestureRecognizer()..onTap=(){
                                  Get.to(()=>SignUpScreen());}
                            ),
                          ]))
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
  void onCkeck(){
    setState(() {
         if(phoneController.text.length<10){
            _phoneInvalid = true;
         }else{
           _phoneInvalid= false;
         }

          if(passController.text.isEmpty){
            _passInvalid =true;
          }else{
            _passInvalid =false;
          }

          if(!_phoneInvalid && !_passInvalid){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RoleScreen(),));
          }
    });
  }

  void showPass(){
    setState(() {
      _showPass = !_showPass;
    });
  }


}
