import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/bookingModel.dart';
import '../widget/tablebooking_widget.dart';
import 'choosedatepage.dart';
import 'choosetablepage.dart';
import 'inforpage.dart';
const List<String> list = <String>['Tất Cả Khu', 'Khu 1-3', 'Khu 3-6', 'Khu 6-9'];
const List<String> list2 = <String>['Tầng 1-3', 'Tầng 3-6', 'Tầng 6-9'];
class TabBooking extends StatefulWidget {
  @override
  _TabBookingState createState() => _TabBookingState();
}

class _TabBookingState extends State<TabBooking> with TickerProviderStateMixin {

  late TabController _controller2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller2 = new TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookingViewModel>(context, listen: false);
    return PageView(
      controller: provider.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        TabBooking1(controller2: _controller2,provider: provider),
        ChooseDatePage(),
        ChooseTablePage(),
        InforPage()
      ],
    );

  }

}

class TabBooking1 extends StatefulWidget {

  final TabController controller2;
  final BookingViewModel provider;

  const TabBooking1({required this.controller2,required this.provider}) ;

  @override
  State<TabBooking1> createState() => _TabBooking1State();
}

class _TabBooking1State extends State<TabBooking1> {
  late  String DropValue = list.first;
  late  String DropValue2 = list2.first;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: FlatButton(
            onPressed: () => widget.provider.nextPage(),
            color: Colors.green,
            height: 45,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 17,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'TẠO LỊCH HẸN MỚI',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 10),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Nhập Mã Đặt Chỗ',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: const BorderSide(),
                ),
                suffixIcon: Icon(Icons.keyboard)
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: 355,
          height: 50,
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.only(left: 16,right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(100),
              color:  Colors.white
          ),
          child: DropdownButton<String>(
            value: DropValue,
            isExpanded: true,
            icon: Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            underline: Container(
              height: 2,

            ),
            onChanged: (String? value) {
              setState(() {
                DropValue = value!;
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
        SizedBox(height: 20,),
        Container(
          width: 355,
          height: 50,
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.only(left: 16,right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(100),
              color:  Colors.white
          ),
          child: DropdownButton<String>(
            value: DropValue2,
            isExpanded: true,
            icon: Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            underline: Container(
              height: 2,

            ),
            onChanged: (String? value) {
              setState(() {
                DropValue2 = value!;
              });
            },
            items: list2.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: TabBar(
            controller: widget.controller2,
            indicatorColor: Colors.red,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontSize: 15),
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 14),
            tabs: [
              Tab(
                text: ('TÌNH TRẠNG BOOKING'),
              ),
              Tab(
                text: ('LỊCH HẸN'),
              )
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: widget.controller2,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Còn Trống', style: TextStyle(fontSize: 15),),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle
                                  ),
                                ),
                                Text('Đã Đặt', style: TextStyle(fontSize: 15),),
                              ],
                            ),

                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Khách Đã Tới', style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: ListView(
                          children: <Widget>[
                            SizedBox(height: 10,),
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
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 15,),
                                TableBookingWidget(chairsSlot: 4, status: TableStatus.BOOKED),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 5, status: TableStatus.EMPTY),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 4, status: TableStatus.CAME),
                                SizedBox(width: 15,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 32,),
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
                                SizedBox(width: 32,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 15,),
                                TableBookingWidget(chairsSlot: 2, status: TableStatus.BOOKED,),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 4, status: TableStatus.EMPTY),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 6, status: TableStatus.CAME),
                                SizedBox(width: 15,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 32,),
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
                                SizedBox(width: 32,),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 15,),
                                TableBookingWidget(chairsSlot: 2, status: TableStatus.BOOKED),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 4, status: TableStatus.EMPTY),
                                Spacer(),
                                TableBookingWidget(chairsSlot: 6, status: TableStatus.CAME),
                                SizedBox(width: 15,),
                               ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 32,),
                                Text(
                                  'Bàn 7',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 8',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  'Bàn 9',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 32,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/bg.png'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Đã Tới Giờ Hẹn', style: TextStyle(fontSize: 15),),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle
                                  ),
                                ),
                                Text('Sắp Tới', style: TextStyle(fontSize: 15),),
                              ],
                            ),

                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Đã Hủy', style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 380,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                          ),
                          child: ListView(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                                child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 90,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.account_circle_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5, bottom: 7),
                                                child: Text(
                                                  'MĐC: 20202',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              Text(
                                                'ANH DŨNG',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                '0933 999999',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 90,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.greenAccent,
                                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_alarm,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '9:00',
                                                    style: TextStyle(color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.account_circle_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5, bottom: 7),
                                                child: Text(
                                                  'MĐC: 20202',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              Text(
                                                'ANH DŨNG',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                '0933 999999',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_alarm,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '9:00',
                                                    style: TextStyle(color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.account_circle_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5, bottom: 7),
                                                child: Text(
                                                  'MĐC: 20202',
                                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                                ),
                                              ),
                                              Text(
                                                'ANH DŨNG',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                              ),
                                              Text(
                                                '0933 999999',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_alarm,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '9:00',
                                                    style: TextStyle(color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.account_circle_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5, bottom: 7),
                                                child: Text(
                                                  'MĐC: 20202',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              Text(
                                                'ANH DŨNG',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                '0933 999999',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_alarm,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '9:00',
                                                    style: TextStyle(color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.account_circle_rounded,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5, bottom: 7),
                                                child: Text(
                                                  'MĐC: 20202',
                                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                                ),
                                              ),
                                              Text(
                                                'ANH DŨNG',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                              ),
                                              Text(
                                                '0933 999999',
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_alarm,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '9:00',
                                                    style: TextStyle(color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
