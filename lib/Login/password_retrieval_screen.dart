import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'otp_screen.dart';
const List<String> list = <String>['Việt Nam (+84)', 'Anh (+44)', 'Nhật Bản (+81)', 'Trung Quốc (+86)'];

class RessetPass extends StatefulWidget {
  const RessetPass({Key? key}) : super(key: key);

  @override
  State<RessetPass> createState() => _RessetPassState();
}

class _RessetPassState extends State<RessetPass> {
  String dropdownValue = list.first;
  final  phoneControllor = TextEditingController();
  var _phoneErr = "vui lòng nhập đủ số điện thoại";
  var _phoneValid = false;
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
                         'LẤY LẠI MẬT KHẨU',
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                       ),
                       SizedBox(
                         height: 4,
                       ),
                       Text(
                         'TÀI KHOẢN QUA SỐ ĐIỆN THOẠI',
                         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                           controller: phoneControllor,
                           maxLength: 10,
                           keyboardType: TextInputType.number,
                           inputFormatters: <TextInputFormatter>[
                             FilteringTextInputFormatter.digitsOnly
                           ],
                           decoration: InputDecoration(
                             errorText: _phoneValid? _phoneErr : null,
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
                         child: GestureDetector(
                           onTap: () {
                             valid();
                           },
                           child: Container(
                             alignment: Alignment.center,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(left: 90),
                                   child: Center(
                                     child: Text(
                                       "ĐĂNG NHẬP",
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
                       ),
                       SizedBox(
                         height: 20,
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
         ),
       ],
      ),
    );
  }
  void valid(){
    setState(() {
      if(phoneControllor.text.length <10){
        _phoneValid = true;
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
      }
    });
  }
}
