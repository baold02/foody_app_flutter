import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widget/table_widget.dart';

class DialogTable extends StatefulWidget {
  @override
  _DialogTableState createState() => _DialogTableState();
}

class _DialogTableState extends State<DialogTable> {

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
                      'CHỌN GHẾ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  ),
                  Spacer(),
                  Text(
                    '8',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Số Ghế Khách Đặt',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Spacer(),
                  Text(
                    'Số Ghế Đã Chọn',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 240,
                    width: 240,
                    child: TableWidget(
                      chairsSlot: 4,
                      status: TableStatus.BOOKED,
                      booked: 1,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Text(
                    'Chọn Tất Cả Ghế',
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
                  SizedBox(width: 20,),
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
                      onPressed: () => {
                        Navigator.of(context).pop(true),
                      },
                      color: Colors.yellow[700],
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
                          SizedBox(width: 100,),
                          Text(
                            'XONG',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 115,),
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
