import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/login_page.dart';
// import 'practice2.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Practice2(),
      home: Constants.prefs?.getBool("loggedIn") == true?HomePage():LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
