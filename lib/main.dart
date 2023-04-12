import 'package:flutter/material.dart';
import 'package:yesno/config/theme/app_theme.dart';
import 'package:yesno/presentation/screen/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YesNo App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: ChatScreen()
    );
  }
}