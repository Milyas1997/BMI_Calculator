import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Calculator_Model/Calculate_BMI.dart';
import '../Custom_Widget/FirstRow.dart';
import '../Custom_Widget/LastRow.dart';
import '../main.dart';

class Input_page extends StatefulWidget {
  const Input_page({Key? key}) : super(key: key);

  @override
  State<Input_page> createState() => _Input_pageState();
}

class _Input_pageState extends State<Input_page> {
  Gender pressGender = Gender.NON;
  int height = 120;
  int weight = 50;
  int age = 25;
  bool ConOne = false;
  bool ConTwo = false;
  selectGener(pressGender) {
    switch (pressGender) {
      case 1:
        pressGender == Gender.M;
        break;
      case 2:
        pressGender == Gender.FM;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        title: Text('BMI Calculator', style: txtcolr.copyWith(fontSize: 20)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    ConOne = true;
                    ConTwo = false;
                    pressGender = Gender.M;

                    pressGender = Gender.M;
                  },
                  child: FirstRow(
                    icon: Icons.male,
                    label: 'Male',
                    bgcolor: ConOne ? ActiveColor : inActiveColr,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ConTwo = true;
                    ConOne = false;
                    pressGender == Gender.FM;

                    setState(() {});
                  },
                  child: FirstRow(
                    icon: Icons.female,
                    label: 'Female',
                    bgcolor: ConTwo ? ActiveColor : inActiveColr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              height: MediaQuery.of(context).size.height / 4.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1D1E33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: txtcolr,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: txtcolr.copyWith(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'cm',
                        style: txtcolr,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0XFF8D8E98),
                      thumbColor: Color(0xffEB1555),
                      overlayColor: Color(0x35EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 18,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 40,
                      ),
                    ),
                    child: Slider(
                        min: 100,
                        max: 280,
                        // activeColor: Color(0xffEB1555),
                        // inactiveColor: Color(0XFF8D8E98),
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {});
                          height = value.round();
                        }),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LastRow(
                  labelOne: 'WEIGHT',
                  labelTwo: weight.toString(),
                  iconButton: IconButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: Icon(
                        Icons.plus_one,
                        size: 30,
                        color: Colors.white,
                      )),
                  iconButtonOne: IconButton(
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      icon: Icon(
                        Icons.exposure_minus_1,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
                LastRow(
                  labelOne: 'AGE',
                  labelTwo: age.toString(),
                  iconButton: IconButton(
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      icon: Icon(
                        Icons.plus_one,
                        color: Colors.white,
                        size: 30,
                      )),
                  iconButtonOne: IconButton(
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      icon: Icon(
                        Icons.exposure_minus_1,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  
                });
                var calculatebmi = CalculateBMi(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage(getCaution: calculatebmi.ResultCaution(),getresultmsg:calculatebmi.getResult(),resultvalue:calculatebmi.getBmiValue(),)),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: txtcolr.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                color: Color(0xffEB1555),
              ),
            ),
          )
        ],
      )),
    );
  }
}


