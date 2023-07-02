import 'package:flutter/material.dart';

// Chapter 1 - Scaffold and Home Page
class Ch1 extends StatelessWidget {
  const Ch1({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: Colors.blue,
  //     child: Text("Hello world"),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
			body: Container(
				child: const Text("Hi Flutter"),
			),
    );
  }
}
