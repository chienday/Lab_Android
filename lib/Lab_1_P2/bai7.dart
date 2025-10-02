import 'package:flutter/material.dart';

class GradientButtonsScreen extends StatelessWidget {
  const GradientButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gradient Buttons', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _gradientButton(
              'Click me 1',
              [Colors.green.shade400, Colors.green.shade600],
            ),
            const SizedBox(height: 16),
            _gradientButton(
              'Click me 2',
              [Colors.orange.shade400, Colors.deepOrange.shade400],
            ),
            const SizedBox(height: 16),
            _gradientButton(
              'Click me 3',
              [Colors.lightBlue.shade300, Colors.blue.shade500],
            ),
            const SizedBox(height: 16),
            _gradientButton(
              'Click me 4',
              [Colors.grey.shade600, Colors.grey.shade800],
            ),
          ],
        ),
      ),
    );
  }

  Widget _gradientButton(String text, List<Color> colors) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}