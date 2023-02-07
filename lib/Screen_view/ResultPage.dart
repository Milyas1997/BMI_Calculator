import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultPage extends StatefulWidget {
  final String getresultmsg;
  final String getCaution;
  final String resultvalue;

  ResultPage(
      {required this.getCaution,
      required this.getresultmsg,
      required this.resultvalue});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text(
          'BMI CALCULATOR',
          style: txtcolr.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25),
              child: Text(
                'Your Result',
                style: txtcolr.copyWith(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff111328),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          widget.getresultmsg,
                          style: txtcolr.copyWith(
                              color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          widget.resultvalue,
                          style: txtcolr.copyWith(
                              fontSize: 70, color: Colors.white),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          widget.getCaution,
                          style: txtcolr.copyWith(
                              color: Colors.white, fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  color: Color(0xffEB1555),
                  child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
