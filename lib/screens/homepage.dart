import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color(0xFFF6F6F6),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 16.0,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                TaskCard(
                  title: "Get Started",
                ),
                TaskCard(
                  title: "Hello There!",
                )
              ],
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFF7349FE),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: const Offset(0.0, 0.0),
                      )
                    ]),
                child: Image(
                  image: AssetImage('assets/images/add_icon.png'),
                ),
              ),
            )
          ],
        ),
      ),
    )
  );
  }
}
