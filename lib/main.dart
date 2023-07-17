import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinedating/home_page.dart';
import 'package:onlinedating/login.dart';
import 'package:onlinedating/sign_up.dart';



void main() {
  runApp(MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: HomePage()));
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/welcome.svg', width: 100,height: 200,),
  // semanticsLabel: 'SVG Image',
  // placeholderBuilder: (context) => CircularProgressIndicator(),
          Center(child: Text("welcome dear visitor this Making every employee feel comfortable and familiar with their new working environment is the best way to start a healthy work relationship", style:TextStyle(fontSize: 16, color: Colors.black),)),
          SizedBox(height: 10,),
          // FloatingActionButton(onPressed: (){}, child: Text("Login"),)
          // ElevatedButton(onPressed: (){}, child: Text("Login"))
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
              
            },
            child: Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: Center(child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
          
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("no acount yet",style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold,),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupPage()));
              }, child:Text("Sign Up", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,),))
            ],
          )

  ]),


          
        
      
    );
  }
}
