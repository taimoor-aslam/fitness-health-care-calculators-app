import 'package:fitness_health_care_calculator/bmi%20calculator/bmi_result.dart';
import 'file:///D:/Android%20in%20Flutter/Course%20Work/fitness_health_care_calculator/lib/widgets/custom_slider.dart';
import 'package:fitness_health_care_calculator/size_config.dart';
import 'package:fitness_health_care_calculator/widgets/switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int weightCount=0;
  int ageCount=0;
  double heightValue=0;

  void ageCountIncrement(){
    setState(() {
      ageCount++;
    });
  }

  void ageCountDecrement(){
    setState(() {
      ageCount--;
      if(ageCount<0){
        ageCount=0;
      }
    });
  }

  void weightCountIncrement(){
    setState(() {
      weightCount++;
    });
  }

  void weightCountDecrement(){
    setState(() {
      weightCount--;
      if(weightCount<0){
        weightCount=0;
      }
    });
  }

  void heightChange(double height){
    setState(() {
      heightValue=num.parse(height.toStringAsFixed(1));
    });
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text("Age (years)"),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical*2,
                    ),
                    Text(ageCount.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                    ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical*1,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Transform.scale(
                              scale: 0.7,
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                child: Icon(Icons.remove,
                                color: Colors.black,
                                ),
                                onPressed: (){
                                  ageCountDecrement();
                                },
                                backgroundColor: Colors.grey.shade50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal*2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Transform.scale(
                              scale: 0.7,
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                child: Icon(Icons.add,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  ageCountIncrement();
                                },
                                backgroundColor: Colors.grey.shade50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                ),
                child: Column(
                  children: [
                    Text("Weight (kgs)"),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical*2,
                    ),
                    Text(weightCount.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical*1,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Transform.scale(
                              scale: 0.7,
                              child: FloatingActionButton(
                                heroTag: "btn3",
                                child: Icon(Icons.remove,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  weightCountDecrement();
                                },
                                backgroundColor: Colors.grey.shade50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal*2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Transform.scale(
                              scale: 0.7,
                              child: FloatingActionButton(
                                heroTag: "btn4",
                                child: Icon(Icons.add,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  weightCountIncrement();
                                },
                                backgroundColor: Colors.grey.shade50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Height (cm)"),
                Text(heightValue.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                  ),
                ),
                SliderWidget(sliderHeight: 60,max: 300,min: 0,fullWidth: false,heightChange: this.heightChange),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Gender"),
                SizedBox(
                  height: SizeConfig.blockSizeVertical*1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("i'm",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("Female"),
                    SwitchButton(),
                    Text("Male"),
                  ],
                ),
              ],
            ),
          ),

          Container(
            width: SizeConfig.blockSizeHorizontal*90,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextButton(
              child: Text("CALCULATE",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
              onPressed: (){
                if(heightValue>0 && weightCount>0) {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          BMIReuslt((heightValue * heightValue * 0.0001), weightCount)));
                }
              },
            ),


          ),
        ],
      ),
    );
  }
}
