import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

class Result extends StatelessWidget {
  double bmi = 0;
  String status = "";
  Result({super.key , required this.bmi});
  String returnResult(double bmi)
  {
    if(bmi <= 18.5)
        return "Underweight";
    else if(bmi <= 25)
        return "Normal";
    else if(bmi <= 30)
        return "Overweight";
    else
      return "Obesity";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Your Result",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(returnResult(bmi),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text("${bmi.round()}",style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,color: Colors.white)),
                  Text("mohamed zakaria",style: TextStyle(fontSize: 20,color: Colors.white)),
                ],
              ),
            ),
            MaterialButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())),child: Text("Re-Calculate",style: TextStyle(fontSize: 30),),padding: EdgeInsets.only(left: 100,right: 100),color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}
