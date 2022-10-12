import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/bookingModel.dart';


class InforPage extends StatefulWidget {
  @override
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InforPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'LỊCH HẸN ĐÃ ĐẶT',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '20/10',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ngày Hẹn',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '09:00',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Giờ Hẹn',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '10',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Chỗ',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '1-3',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Bàn Số',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '1',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Khu Vực',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '3',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Tầng',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(
                              'THÔNG TIN KHÁCH HÀNG',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Anh Dũng',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Họ Và Tên',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '20202',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Mã Đặt Chỗ',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '0933 999999',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Số Điện Thoại',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '10',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Số Lượng Khách Sẽ Đến',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Trống',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Sinh Nhật',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      'Đã Gửi',
                                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'SMS',
                                      style: TextStyle(fontSize: 13, color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(width: 20,),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20.0, top: 10),
                                  child: Expanded(
                                    child: FlatButton(
                                      onPressed: () {
                                        Provider.of<BookingViewModel>(context, listen: false).backToHome();
                                      },
                                      color: Colors.green,
                                      height: 40,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.5)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.arrow_back_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 20,),
                                          Text(
                                            'QUAY LẠI MÀN HÌNH CHÍNH',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(width: 20,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
