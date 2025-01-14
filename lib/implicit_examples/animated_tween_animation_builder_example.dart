import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsating Circle Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
            duration:const Duration(seconds: 1),
            tween: Tween<double>(
              begin: 0.0,
              end: 200.0,
            ),
            builder: (context, value, child) {
              return Container(
                width: value,
                height: value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: value,
                      spreadRadius: value / 2,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
