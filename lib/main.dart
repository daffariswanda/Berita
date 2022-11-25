import 'package:flutter/material.dart';

// mengimport halaman
import './pages/splashScreen.dart';

void main() {
  // fungsi main menjalankan aplikasi
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // route yang akan dijalankan
    );
  }
}
