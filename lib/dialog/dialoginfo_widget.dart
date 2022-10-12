import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Models/bookingModel.dart';

class DialogInfo extends StatefulWidget {
  @override
  _DialogInfoState createState() => _DialogInfoState();
}

class _DialogInfoState extends State<DialogInfo> {
  var _lights = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 14),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'THÔNG TIN KHÁCH HÀNG',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Họ Và Tên',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 14.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Sinh Nhật',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 14.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          suffixIcon: Icon(Icons.calendar_today_rounded)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Số Điện Thoại',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 14.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Số Lượng Khách Sẽ Đến',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 14.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Số Lượng Nam',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 14.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Số Lượng Nữ',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 14.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                    'Gửi SMS Thông Báo',
                    style: TextStyle(color: Colors.white, fontSize: 16 ),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: _lights,
                      onChanged: (bool value) {
                        setState(() {
                          _lights = value;});},
                      trackColor: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Provider.of<BookingViewModel>(context, listen: false).nextPage();
                      },
                      color: Colors.green,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 125,),
                          Text(
                            'XONG',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 100,),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
