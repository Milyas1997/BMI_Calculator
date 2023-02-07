import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class FirstRow extends StatefulWidget {
  FirstRow({required this.icon, required this.label, required this.bgcolor});
  final IconData icon;
  final String label;
  Color bgcolor;

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120,
      // width: 90,
      height: MediaQuery.of(context).size.height / 4.2,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.bgcolor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 70,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Text(widget.label, style: txtcolr),
        ],
      ),
    );
  }
}
