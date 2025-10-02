import 'package:flutter/material.dart';



class AppButtonsDemo extends StatelessWidget {
  const AppButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blue),
          onPressed: () {},
        ),
        title: const Text('App Buttons', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Primary button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3B5AFB),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('AppButton.primary()', style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            const SizedBox(height: 16),
            // Primary disabled
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
              return const Color.fromARGB(255, 163, 169, 225); // tím nhạt khi disable
            }
              return const Color.fromARGB(255, 153, 161, 235); // tím đậm khi enable
      },
    ),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(vertical: 15),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
  ),
              child: const Text('AppButton.primary() - disabled', style: TextStyle(fontSize: 16,color: Colors.white)),
            ),
            const SizedBox(height: 16),
            // Outlined
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 25),
                side: const BorderSide(color: Color.fromARGB(255, 86, 110, 227), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('AppButton.outlined()', style: TextStyle(fontSize: 16, color: Color(0xFF3B5AFB))),
            ),
            const SizedBox(height: 16),
            // Gradient
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                gradient: const LinearGradient(
                  colors: [Color(0xFF3B5AFB), Color(0xFF23286B)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('AppButton.gradient()', style: TextStyle(fontSize: 16,color: Colors.white)),
              ),
            ),
            const SizedBox(height: 16),
            // Accent Gradient
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                gradient: const LinearGradient(
                  colors: [Color(0xFF4AC29A), Color(0xFF2E8B57)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('AppButton.accentGradient()', style: TextStyle(fontSize: 16,color: Colors.white)),
              ),
            ),
            const SizedBox(height: 32),
            // AppTextButton
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('AppTextButton()', style: TextStyle(fontSize: 16, color: Color(0xFF3B5AFB))),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'disabled AppTextButton()',
                style: TextStyle(fontSize: 16, color: Color(0xFFB6C6F5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}