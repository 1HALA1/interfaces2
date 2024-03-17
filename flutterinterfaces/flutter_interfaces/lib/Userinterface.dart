import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';

class Userinterface extends StatelessWidget {
  const Userinterface({super.key});

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
 body: Column(
   mainAxisAlignment: MainAxisAlignment.center,
   
          children: [
           //Image.asset('lib/assetst/photos/mainPhoto.jpg'),
            SizedBox(height: 30),
            SizedBox(
              child: Appbuttons(
                text: "Request Authentication",
                routeName: '/Login',),
            ),
            SizedBox(height: 40),
            
            SizedBox(
              child: Appbuttons(
                text: "Log Out",
                routeName: '/LandPage',),
            ),
            
            ]
 ),

          ),
      


    );

    
  }
}