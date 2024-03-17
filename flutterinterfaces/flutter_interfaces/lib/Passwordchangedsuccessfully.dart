import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';

class Passwordchangedsuccessfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: passwordChangedSuccessfully(),
    );
  }
}
class passwordChangedSuccessfully extends StatefulWidget {
  @override
  _passwordChangedSuccessfullyState createState() => _passwordChangedSuccessfullyState();
}

class _passwordChangedSuccessfullyState extends State<passwordChangedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
      leading:IconButton( icon:Icon(Icons.arrow_back),
      onPressed:()=> Navigator.pop(context),),
      ),
      body: Column(
       
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Text("Successful!", style: TextStyle(
            fontSize: 35
          ),),
          Text("You have successfully changed your password. Please use your new password to login", style: TextStyle(
            fontSize: 18,
          ),textAlign: TextAlign.center,),
          SizedBox(height: 70,),
          Center(
            child:Appbuttons(text: "continue", routeName: '/Login', width: 200, height: 50,)
          ),
        ],
      ),
    );
  }
  
}
