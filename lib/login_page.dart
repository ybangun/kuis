import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'bantuan_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermarket App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(username: ModalRoute.of(context)!.settings.arguments as String),
        '/bantuan': (context) => BantuanPage(),
      },
    );
  }
}
