import 'package:flutter/material.dart';
import 'package:tutorial/util/time_helper.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.currentTime});
  final DateTime currentTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage("assets/images/${TimeHelper.getTimeOfTheDay(time: currentTime)}.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 64),
            FittedBox(
              child: Text(
                "Good ${TimeHelper.getTimeOfTheDay(time: currentTime)}",
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
