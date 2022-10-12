import 'package:flutter/material.dart';
import 'package:foody_app_flutter/Models/user_model.dart';
import 'package:provider/provider.dart';
class BookingWidget extends StatefulWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           resizeToAvoidBottomInset: false,
           body: Container(
             margin: EdgeInsets.only(top: 20,left: 5,right: 5),
             child: Column(
               children: [
                 Container(
                   child: Row(
                     children: [
                       Row(children: [Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                             // border: Border.all(color: Colors.grey,width: 1),
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                           color: Colors.greenAccent,
                         ),
                       ),
                       SizedBox(width: 3,),
                       Text('Còn Trống')
                       ],
                       ),
                       SizedBox(width: 50,),
                       Row(children: [Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                           // border: Border.all(color: Colors.grey,width: 1),
                           borderRadius: BorderRadius.all(Radius.circular(50)),
                           color: Colors.yellow,
                         ),
                       ),
                         SizedBox(width: 3,),
                         Text('Đã Đặt')
                       ],
                       ),
                       SizedBox(width: 40,),
                       Expanded(
                         child: Row(children: [Container(
                           width: 30,
                           height: 30,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                             color: Colors.pink,
                           ),
                         ),
                           SizedBox(width: 3,),
                           Text('Khách Đã Tới')
                         ],

                         ),
                       ),
                     ],
                   ),

                 ),
                 SizedBox(height: 10,),
                 Expanded(
                   child: Container(
                     width: double.infinity,
                     height: 100,
                     color: Colors.grey,
                   ),
                 )
               ],
             ),

           ),
    );
  }
}
