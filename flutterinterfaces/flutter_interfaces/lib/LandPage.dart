import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';
 
class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         //  Image.asset('lib/assetst/photos/mainPhoto.jpg'),
            Text(
              "Protect Your Lab",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            SizedBox(
              child: Appbuttons(
                width: 200, height: 50,
                text: "NEXT",
                routeName: '/VoicePage',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
