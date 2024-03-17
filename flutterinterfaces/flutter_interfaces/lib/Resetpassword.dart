import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';
import 'package:flutter_interfaces/widgets/Apptextfield.dart';

class Resetpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: resetPassword(),
    );
  }
}
class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Reset Password", style: TextStyle(
                fontSize: 35
            ),),
            Text("Reset code was sent to your Email. Please enter the code and create a new password", style: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),),
            SizedBox(height: 20,),
            Text("Reset code", style: TextStyle(
              fontSize: 23,
            ),),
            Apptextfield(hintText: 'Rest Code',),
            SizedBox(height: 20,),
            Text("Password", style: TextStyle(
              fontSize: 23,
            ),),
           Apptextfield(hintText: "Enter your password here"),
            SizedBox(height: 20,),
            Text("Confirm Password", style: TextStyle(
              fontSize: 23,
            ),),
           Apptextfield(hintText: "Re-Enter your password here"),
            Expanded(
              child: Center(
                child:Appbuttons(text: "Change Password", routeName: '/passwordchangedsuccessfully',  
             )
              ),
            )
          ],
        ),
      ),
    );
  }
}
