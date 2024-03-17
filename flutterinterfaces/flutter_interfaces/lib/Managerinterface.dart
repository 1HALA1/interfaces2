import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';


class Managerinterface extends StatelessWidget {
  const Managerinterface({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        color:Colors.grey[200] ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Center(child: 
        Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
              //Image.asset('lib/assetst/photos/mainPhoto.jpg'),
               SizedBox(height: 25,),
              Appbuttons(text: "Registration Requests", routeName: '/LandPage'),
              SizedBox(height: 25,),
              Appbuttons(text: "Random Texts", routeName: '/Randomtext'),
              SizedBox(height: 25,),
              Appbuttons(text: "Reports", routeName: '/Signup'),
              SizedBox(height: 25,),
              Appbuttons(text: "Log Out", routeName: '/LandPage'),
        
        ],
        ),
        
        ),
        ),
       
      ),
    ));
  }
}
