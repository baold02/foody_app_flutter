import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/bookingModel.dart';
import '../Tabs/tabbooking.dart';

class StaffPage extends StatefulWidget {
  @override
  _StaffPageState createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<BookingViewModel>(context);
    return WillPopScope(
      onWillPop: () async => _checkPop(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 70,
                          alignment: Alignment.centerLeft,
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )

                      ),
                      Container(
                        height: 109,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints.expand(height: 50),
                                child: TabBar(
                                  controller: _controller,
                                  indicatorColor: Colors.yellow,
                                  tabs: [
                                    Tab(text: "ĐẶT BÀN"),
                                    Tab(text: "GÓI MÓN"),
                                    Tab(text: "PHỤC VỤ"),
                                    Tab(text: "THANH TOÁN"),
                                  ],
                                  labelStyle: TextStyle(fontSize: 15),
                                  labelPadding: EdgeInsets.only(right: 5),
                                  indicatorWeight: 5,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  labelColor: Colors.yellow,
                                  unselectedLabelColor: Colors.white,
                                  unselectedLabelStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 25,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'img/db.png',
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      TabBooking(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _checkPop() {
    if (_controller.index == 0) {
      return Provider.of<BookingViewModel>(context, listen: false).checkPop();
    } else {
      setState(() {
        _controller.index--;
      });
      return false;
    }
  }
}

