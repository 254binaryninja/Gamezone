import 'package:flutter/material.dart';
import 'package:gamezone/adapters/ui/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:gamezone/adapters/ui/screens/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create:(context)=> ThemeProvider(),
       child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
