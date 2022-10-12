import 'dart:math';
import 'package:flutter/material.dart';
import '../dialog/dialogtable_widget.dart';


enum TableStatus {
  EMPTY,
  BOOKED,
  CAME,
}

class TableWidget extends StatelessWidget {
  final int chairsSlot;
  final TableStatus status;
  final int booked;

  const TableWidget(
      {
        required this.chairsSlot,
        required this.status,
        this.booked = 0});

  _check() {
    Color color;
    switch (status) {
      case TableStatus.EMPTY:
        color = Colors.green;
        break;
      case TableStatus.BOOKED:
        color = Colors.yellow;
        break;
      case TableStatus.CAME:
        color = Colors.red;
        break;
      default:
        color = Colors.cyan;
        break;
    }
    return color;
  }

  List<Align> _stacks() {
    Color color;
    final list = <Align>[];
    list.add(Align(
      alignment: Alignment(0, 0),
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: _check(),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '$booked/$chairsSlot',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ));
    for (var i = 0; i <= chairsSlot; i++) {
      if (i <= booked) {
        color = Colors.yellow;
      } else {
        color = _check();
      }
      var degree = 360 / chairsSlot * i;
      var radian = degree * (pi / 180);
      list.add(
        Align(
          alignment: Alignment(sin(radian), cos(radian)),
          child: Transform.rotate(
            angle: -radian,
            child: Image.asset(
              'img/ghe.png',
              height: 18,
              color: color,
            ),
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: GestureDetector(
        onTap: (){
          showGeneralDialog(
            barrierDismissible: false,
            barrierColor: Colors.black.withOpacity(0.85),
            context: context,
            pageBuilder:(context, animation, secondaryAnimation) {
              return DialogTable();
            },
          );
        },
        child: Stack(
          children: _stacks(),
        ),
      ),
    );
  }
}
