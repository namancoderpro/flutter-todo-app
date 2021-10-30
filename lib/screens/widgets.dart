import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  TaskCard({required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 32.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "This is your first task. Edit it or create a new one. ",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
              ),
            ),
          )
        ],
      )
    );
  }
}
