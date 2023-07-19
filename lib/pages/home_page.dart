import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'login_page.dart';

// Chapter 7 - Forms, Stack and Navigation - A Login Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});
	static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
				actions: [
					IconButton(
						onPressed: () {
							Constants.prefs?.setBool("loggedIn", false);
							Navigator.pushReplacementNamed(context, LoginPage.routeName);
						}, 
						icon: const Icon(Icons.exit_to_app)
					)
				],
      ),

			body: const Center(
				child: Text("This is the home page")
			),
    );
  }
}
