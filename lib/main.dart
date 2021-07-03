import 'package:fitness_health_care_calculator/bmi%20calculator/bmi_calculator.dart';
import 'package:fitness_health_care_calculator/bmr%20calculator/bmr_calculator.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<String> calNames=[" BMI Calculator", " BMR Calculator", " Calorie Calculator",
    " Ideal Weight Calculator", " Protein Calculator", " Body Fat Calculator", " Water Intake"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Fitness And Health Calculator"),
                background: Image.asset("images/calimage.jpg",
                fit: BoxFit.cover,
                ),
              ),
            ),
            new SliverList(
                delegate: new SliverChildBuilderDelegate(
                        (BuildContext context, int index)=>GestureDetector(
                          child: Container(
                            height: 200.0,
                            child: Card(
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                                    image: AssetImage('images/${(index+1).toString()}.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  calNames[index],
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          onTap: (){
                            if(index==0) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => BMICalculator()));
                            }
                            else if(index==1){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => BMR_Calculator()));
                            }
                          },
                        ),
                  childCount: calNames.length,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
