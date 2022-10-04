import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    List imsges = [
      "f.png",
      "z.png",
      "g.png"
    ];
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('img/bg.png'),    fit: BoxFit.cover,),
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
            SizedBox(
              height: 1,
            ),
            Container(
              width: 340,
              height: 300,
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 270,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
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
                    height: 50,
                    child:
                        TextField(
                            decoration: InputDecoration(
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
                        Text(
                          'Quên mật Khẩu?',
                          style: TextStyle(fontWeight: FontWeight.bold),
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
                    //     image: DecorationImage(
                    //     //     image: AssetImage(
                    //     //         "img/loginbtn.png"
                    //     //     ),
                    //     //     fit: BoxFit.cover
                    //     // )
                     ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            margin: EdgeInsets.only(left:90 ),
                            child: Text("Đăng Nhập",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Image.asset('img/mt.png',width: 10,height: 10),
                          )
                        ],

                      ),
                    ),

                  ),
                  //btn
                ],
              ),
            ),
           SizedBox(height: 200,),
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
                  SizedBox(height: 20,),
                  Text('Đăng Nhập Bằng Tài Khoản Liên Kết'),
                  SizedBox(height: 20,),
                  Wrap(
                    children: List<Widget>.generate(3,
                            (index){
                          return Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.deepOrangeAccent[500],
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                    "img/"+imsges[index]
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 10,),
                  RichText(text: TextSpan(
                      text: "Chưa Có Tài Khoản?",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 18
                      ),
                      children: [
                        TextSpan(
                            text: "Đăng Kí Ngay",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),

                        ),
                      ]
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
