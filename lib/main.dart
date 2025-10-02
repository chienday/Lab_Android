import 'package:flutter/material.dart';
import 'Lab_1_P2/Bai1.dart';
import 'Lab_1_P2/bai2.dart';
import 'Lab_1_P2/bai3.dart';
import 'Lab_1_P2/bai4.dart';
import 'Lab_1_P2/bai5.dart';
import 'Lab_1_P2/bai6.dart';
import 'Lab_1_P2/bai7.dart';
import 'Lab_1_P2/bai8.dart';
import 'Lab_1_P2/bai9.dart';
import 'Lab_1_P2/bai10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab App',
      initialRoute: 'textbuttondemo',  // Trang khởi đầu
      debugShowCheckedModeBanner: false,
      routes: {
        '/product': (context) => ProductListPage(),
        '/richdemo': (context) => const RichTextDemo(),
        '/richscreen': (context) => const RichTextScreen(),
        '/appbutton': (context) => const AppButtonsDemo(),
        '/custombutton': (context) => const CourseScreen(),
        '/productdetail': (context) => ProductDetailPage(),
        '/gradientbutton': (context) => const GradientButtonsScreen(),
        '/buttonvariants': (context) => const ButtonVariantsScreen(),
        '/elevatedbuttondemo': (context) => const ElevatedButtonDemo(),
        '/textbuttondemo': (context) => const TextButtonDemo(),
      },
    );
  }
}
