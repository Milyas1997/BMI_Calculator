import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LastRow extends StatefulWidget {
  LastRow({
    required this.labelOne,
    required this.labelTwo,
    required this.iconButton,
    required this.iconButtonOne,
  });
  final String labelOne;
  final String labelTwo;
  IconButton iconButton;
  IconButton iconButtonOne;

  @override
  State<LastRow> createState() => _LastRowState();
}

class _LastRowState extends State<LastRow> {
  // IconButton iconDataOne;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      // width: 90,
      height: MediaQuery.of(context).size.height / 4.2,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff1D1E33),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.labelOne,
            style: txtcolr,
          ),
          SizedBox(
            height: 5,
          ),
          Text(widget.labelTwo,
              style: txtcolr.copyWith(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w900)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(96, 181, 174, 174)),
                child: Center(child: widget.iconButton),
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(96, 181, 174, 174)),
                child: Center(child: widget.iconButtonOne),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget addMinus(IconData icondata) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color.fromARGB(96, 181, 174, 174)),
      child: Center(
          child: Icon(
        icondata,
        color: Colors.white,
        size: 40,
      )),
    );
  }
}
