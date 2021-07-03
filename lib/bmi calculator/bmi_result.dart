import 'package:fitness_health_care_calculator/bmi%20calculator/bmi_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIReuslt extends StatefulWidget {
  double height;
  int weight;
  double Result;
  BMIReuslt(this.height,this.weight){
    print("abc"+this.height.toString()+" "+ this.weight.toString());
    Result=weight/height;
    Result= num.parse(Result.toStringAsFixed(1));
  }
  @override
  _BMIReusltState createState() => _BMIReusltState();
}

class _BMIReusltState extends State<BMIReuslt> {
  String text="";
  int n;
  String getText(){
    if(widget.Result<16){
      text="Underweight";
      n=1;
      return text;
    }
    if(widget.Result>=18.5 && widget.Result<=25){
      text="Normal";
      n=2;
      return text;
    }
    if(widget.Result>25 && widget.Result<=30){
      text="Overweight";
      n=3;
      return text;
    }
    if(widget.Result>30 && widget.Result<=35){
      text="Obese";
      n=4;
      return text;
    }
    if(widget.Result>35 && widget.Result<=40){
      text="Severely Obese";
      n=5;
      return text;
    }
    if(widget.Result>40){
      text="Very Severely Obese";
      n=6;
      return text;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your BMI Score",
            style:TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 170,
            width: 170,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(this.widget.Result.toString(),
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(getText(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Underweight",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: this.n==1?Colors.cyan:Colors.black,
                      ),
                    ),
                    Text("< 18",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==1?Colors.cyan:Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Normal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: this.n==2?Colors.cyan:Colors.black,
                    ),
                    ),
                    Text("18.5 - 25",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==2?Colors.cyan:Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Overweight",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==3?Colors.cyan:Colors.black,
                      ),
                    ),
                    Text("25 - 30",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==3?Colors.cyan:Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Obese",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==4?Colors.cyan:Colors.black,
                      ),
                    ),
                    Text("30 - 35",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==4?Colors.cyan:Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Severely Obese",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==5?Colors.cyan:Colors.black,
                      ),
                    ),
                    Text("35 - 40",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==5?Colors.cyan:Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Very Severely Obese",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==6?Colors.cyan:Colors.black,
                      ),
                    ),
                    Text("40 >",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: this.n==6?Colors.cyan:Colors.black,

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.all(16),
                  // padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(45),
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
                    child: Text("OK",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BMICalculator()));
                    },
                  ),


                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
