import 'package:flutter/material.dart';
import 'package:untitled/Signup.dart';
import 'package:untitled/components/textfeild.dart';
import 'package:untitled/home.dart';
import 'package:untitled/main.dart';

class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Login({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar

        leading: Icon(Icons.account_circle),
        title: Text("Log In"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
          
            padding: EdgeInsets.only(left: 20,right: 20,top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                    [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/unnamed.jpg"),
                        radius: 70,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textFeild(controller: email,icon:  Icon(Icons.email),label:  "Email"),
                    SizedBox(
                      height: 30,
                    ),
                    textFeild(controller:  password,icon:  Icon(Icons.lock),label:  "Password",obscure: true),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        print(email.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
        
                      },
                      child: Text("Login"),
                      color: Colors.blue,
                      mouseCursor: MouseCursor.defer,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                        }, child: Text("Sign Up"))
                      ],
                    ),
        
                    // Image.network("https://static.wikia.nocookie.net/bleach/images/6/68/682Aizen_profile.png/revision/latest?cb=20190617062621&path-prefix=en")
                  ],
                ),
             ]
              ),
            ),
      ),

      );

  }
}
