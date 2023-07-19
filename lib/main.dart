import 'package:flutter/material.dart';
import 'pages/login_page.dart';
// import 'practice2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Practice2(),
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ),
  );
}
