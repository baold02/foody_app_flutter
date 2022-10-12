import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/bookingModel.dart';
const List<String> list = <String>['Khu 1', 'Khu 2', 'Khu 3', 'Khu 4'];

class ChooseDatePage extends StatefulWidget {
  @override
  _ChooseDatePageState createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
  DateTime _selectedValue = DateTime.now();
  String DropValue = list.first;


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookingViewModel>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/bg.png'),
                      fit: BoxFit.cover,
                    )),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'CHỌN NGÀY',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colors.green,
                        selectedTextColor: Colors.white,

                        onDateChange: (date) {
                          setState(() {
                            _selectedValue = date;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'CHỌN GIỜ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 12,),
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 0.9,color: Colors.black87)
                                  ),
                                  child: Center(child: Text('08:00',style: TextStyle(fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      // border: Border.all(width: 0.9,color: Colors.black87),
                                      color: Colors.yellow
                                  ),
                                  child: Center(child: Text('09:00',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 0.9,color: Colors.black87)
                                  ),
                                  child: Center(child: Text('10:00',style: TextStyle(fontWeight: FontWeight.bold),)),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width:90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 0.9,color: Colors.black87)
                                  ),
                                  child: Center(child: Text('11:00',style: TextStyle(fontWeight: FontWeight.bold),)),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'CHỌN VỊ TRÍ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Số Lượng Khách',
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    borderSide: const BorderSide(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
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
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
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
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                                child: FlatButton(
                                  onPressed: () => provider.nextPage(),
                                  color: Colors.green,
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Spacer(),
                                      Text(
                                        'TIẾP THEO',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                        textAlign: TextAlign.center,
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
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
