import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Tambahkan ini
import 'package:flutter_ui_figma/features/home/pages/home_pages.dart';
import 'package:flutter_ui_figma/providers/cart_provider.dart'; // Pastikan path ini sesuai

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),
      home: const HomePage(),
    );
  }
}
