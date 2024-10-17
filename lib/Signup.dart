import 'package:flutter/material.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/components/textfeild.dart';
import 'package:untitled/home.dart';
import 'package:untitled/main.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_pasword = TextEditingController();
  TextEditingController phone_number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle),
        title: const Text("Sign up"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50),
        child: Container(
          width: double.infinity,

          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
          CircleAvatar(
            backgroundImage: AssetImage("assets/unnamed.jpg"),
          radius: 70,
        ),
              const SizedBox(height: 50),
              Column(
        
        
              children: [
                textFeild(controller:  username,icon:   Icon(Icons.account_circle),label:  "Username"),
                const SizedBox(height: 30),
                textFeild(controller: password, icon: Icon(Icons.lock), label: "Password",obscure: true),
                const SizedBox(height: 30),
                textFeild(controller: confirm_pasword, icon: Icon(Icons.lock), label: "Confirm Password"),
                const SizedBox(height: 30),
                textFeild(controller: phone_number, icon: Icon(Icons.phone), label: "Phone Number"),
                const SizedBox(height: 30),
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },color: Colors.blue, child: const Text("Sign up"),)
        
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have in account?"),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                  }, child: Text("Sign in"))
                ],
              ),
          ],
          ),
        ),
      ),
    );
  }
}
