import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this property to false to hide the debug banner
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Displaying your logo image
            Image(
              image: AssetImage("assets/images/mylogo.PNG"),
              width: 200,
            ),
            SizedBox(height: 50), // Adding some vertical space
            // Displaying a spinning square circle with orange color.you can change the spinner from flutter_spinkit package
            SpinKitSquareCircle(
              color: Colors.orange,
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}

