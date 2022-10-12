import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dialog/dialoginfo_widget.dart';
import '../widget/table_widget.dart';


class ChooseTablePage extends StatefulWidget {
  @override
  _ChooseTablePageState createState() => _ChooseTablePageState();
}

class _ChooseTablePageState extends State<ChooseTablePage> with SingleTickerProviderStateMixin {

  var _lights1 = false;
  var _lights2 = false;

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
                              '15/05',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Ngày Hẹn',
                              style: TextStyle(fontSize: 15),
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
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Giờ Hẹn',
                            style: TextStyle(fontSize: 15),
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
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Chỗ',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'CHỌN BÀN',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 10),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Khu 1',
                          border: new OutlineInputBorder(
                            borderRadius:
                            new BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 10),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Tầng 3',
                          border: new OutlineInputBorder(
                            borderRadius:
                            new BorderRadius.circular(25.0),
                            borderSide: const BorderSide(),
                          ),
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle
                          ),
                        ),
                        Text('Còn Trống', style: TextStyle(fontSize: 15),),
                        Spacer(),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                        ),
                        Text('Đã Đặt', style: TextStyle(fontSize: 15),),
                        Spacer(),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                        ),
                        Text('Khách Đã Tới', style: TextStyle(fontSize: 15),),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'KHU 1',
                                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 1,),
                                Text(
                                  '- TẦNG 3',
                                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10,),
                                TableWidget(chairsSlot: 4, status: TableStatus.BOOKED),
                                Spacer(),
                                TableWidget(chairsSlot: 5, status: TableStatus.EMPTY),
                                Spacer(),
                                TableWidget(chairsSlot: 4, status: TableStatus.CAME),
                                SizedBox(width: 10,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 30,),
                                Text(
                                  'Bàn 1',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 2',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 3',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 30,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 10,),
                                TableWidget(chairsSlot: 2, status: TableStatus.EMPTY, booked: 1,),
                                Spacer(),
                                TableWidget(chairsSlot: 4, status: TableStatus.EMPTY),
                                Spacer(),
                                TableWidget(chairsSlot: 6, status: TableStatus.CAME, booked: 6,),
                                SizedBox(width: 10,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 30,),
                                Text(
                                  'Bàn 4',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 5',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 6',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 30,),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10,),
                                Text(
                                  'Chọn Cả Khu',
                                  style: TextStyle(color: Colors.white, fontSize: 15 ),
                                ),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  child: CupertinoSwitch(
                                    value: _lights1,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _lights1 = value;});},
                                    trackColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10,),
                                Text(
                                  'Chọn Cả Tầng',
                                  style: TextStyle(color: Colors.white, fontSize: 15 ),
                                ),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  child: CupertinoSwitch(
                                    value: _lights2,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _lights2 = value;});},
                                    trackColor: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0, top: 10),
                                    child: FlatButton(
                                      onPressed: () => {
                                        showGeneralDialog(
                                          barrierDismissible: false,
                                          barrierColor: Colors.black.withOpacity(0.85),
                                          context: context,
                                          pageBuilder:(context, animation, secondaryAnimation) {
                                            return DialogInfo();
                                          },
                                        ),
                                      },
                                      color: Colors.green,
                                      height: 50,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Spacer(),
                                          Text(
                                            'NHẬP THÔNG TIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
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
