import 'package:flutter/material.dart';

import 'screens/chat_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: "SF Pro Text",
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          tertiary: Color(0xFFA5D19E),
          secondary: Color(0xFFFFF7ED),
          onSurface: Color(0xFF999999),
          primary: Color(0xFF91C789),
        ),
      ),
      home: ChatHomeScreen(),
    );
  }
}
