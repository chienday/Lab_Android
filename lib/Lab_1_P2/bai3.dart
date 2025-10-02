import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // <-- hide the "<" back button
        title: const Text('RichText',style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 11, 15, 138),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                    ),
                  ),
                  TextSpan(
                    text: 'World',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                style: TextStyle(fontFamily: 'Arial'),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'World ',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Text('👋', style: TextStyle(fontSize: 26)),
                    ),
                  ),
                ],
                style: TextStyle(fontFamily: 'Arial'),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const Text('Contact me via: ', style: TextStyle(fontSize: 18)),
                Icon(Icons.email, color: Colors.blue, size: 20),
                Text(' Email', style: TextStyle(color: Colors.blue, fontSize: 18)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Call Me: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '+1234987654321',
                  style: TextStyle(color: Colors.blue, fontSize: 18, decoration: TextDecoration.underline,decorationColor: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Read My Blog ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  'HERE',
                  style: TextStyle(color: Colors.blue, fontSize: 18, decoration: TextDecoration.underline,decorationColor: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}