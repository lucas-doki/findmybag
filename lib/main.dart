import 'package:findmybag/screens/chat_bot_screen.dart';
import 'package:findmybag/screens/main_screen.dart';
import 'package:findmybag/screens/map_screen.dart';
import 'package:findmybag/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => const MainScreen(),
        MapScreen.id: (context) => const MapScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        ChatBotScreen.id: (context) => ChatBotScreen(),
      },
    );
  }
}
