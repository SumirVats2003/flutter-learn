import 'package:flutter/material.dart';

// Chapter 7 - Forms, Stack and Navigation - A Login Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),

			body: const Center(
				child: Text("This is the home page")
			),
    );
  }
}
