import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qibla_app/Controllers/HomeController.dart';
import 'package:qibla_app/Views/HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeController()), 
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Homescreen(), // Ensure Homescreen is properly defined
    );
  }
}
