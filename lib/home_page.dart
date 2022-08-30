import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _IntroPageState();

}

class _IntroPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(child: Text("Welcom to Home Page", style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
