import 'package:flutter/material.dart';
import 'package:untitled/result.dart';

class Home extends StatefulWidget {

  Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  String gender = "male";
  int height = 150;
  int age = 20;
  double weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
        leading: Text(""),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(30),
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children:[ Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Column(
        children: [
        GestureDetector(
        onTap: () {
      gender = "male";
      setState(() {});
      },
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              color: Color(0xff0d0d0d),
              border: Border.all(
                  color: gender == "male" ? Colors.blue : Colors
                      .black, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.male, size: 90, color: Colors.blue,),
              Text(
                "male", style: TextStyle(fontSize: 30, color: Colors
                  .grey),)

            ],
          ),
        ),
      ),


      ],
    ),
              Column(
              children: [
                GestureDetector(
                  onTap: () {
                    gender = "female";
                    setState(() {});
                  },
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color(0xff0d0d0d),
                        border: Border.all(
                            color: gender == "female" ? Colors.pink : Colors
                                .black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 90, color: Colors.pink,),
                        Text(
                          "female", style: TextStyle(fontSize: 30, color: Colors
                            .grey),)

                      ],
                    ),
                  ),
                ),


              ],
            ),

            ],
          ),
          SizedBox(height: 30,),
             Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff0d0d0d),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                         "Height :" ,style: TextStyle(fontSize: 30, color: Colors
                            .grey),),
                        Text(
                          "$height" ,style: TextStyle(fontSize: 60, color: Colors
                            .white),),
                        Slider(
                          activeColor: gender == "male" ? Colors.blue : Colors.pink,
                          thumbColor: gender == "male" ? Colors.blue : Colors.pink,

                          value: height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                          min: 0,
                          max: 200,
                        ),

                      ],

                    ),
                  ),
             SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color(0xff0d0d0d),


                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Weight :", style: TextStyle(fontSize: 20, color: Colors
                          .grey),),
                      Text(
                        "$weight", style: TextStyle(fontSize: 60, color: Colors
                          .white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(mini: true,shape: CircleBorder(),backgroundColor:gender == "male" ? Colors.blue : Colors.pink,foregroundColor: Colors.black ,onPressed: (){weight++;setState(() {});},child: Icon(Icons.add,color: Colors.white,size: 30,)),
                          FloatingActionButton(mini: true,shape: CircleBorder(),backgroundColor:gender == "male" ? Colors.blue : Colors.pink,foregroundColor: Colors.black ,onPressed: (){if(weight>0){weight--;setState(() {});}},child: Icon(Icons.remove,color: Colors.white,size: 30,)),
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color(0xff0d0d0d),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Age :", style: TextStyle(fontSize: 20, color: Colors
                          .grey),),
                      Text(
                        "$age", style: TextStyle(fontSize: 60, color: Colors
                          .white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(mini: true,shape: CircleBorder(),backgroundColor:gender == "male" ? Colors.blue : Colors.pink,foregroundColor: Colors.black ,onPressed: (){age++;setState(() {});},child: Icon(Icons.add,color: Colors.white,size: 30,)),
                          FloatingActionButton(mini: true,shape: CircleBorder(),backgroundColor:gender == "male" ? Colors.blue : Colors.pink,foregroundColor: Colors.black ,onPressed: (){if(age>0){age--;setState(() {});}},child: Icon(Icons.remove,color: Colors.white,size: 30,)),
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            MaterialButton(onPressed: (){
              double h = (height/100);
              double bmi = weight/(h*h);

              Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(bmi: bmi)));
            },

              child: Text("Calculate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),color: gender == "male" ? Colors.blue : Colors.pink,padding: EdgeInsets.only(right: 40,left: 40,top: 20,bottom: 20),)
              ],
            ),


        ),

    );
  }
}