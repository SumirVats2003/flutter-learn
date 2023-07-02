import 'package:flutter/material.dart';

// Chapter 2 - Container and Text
class Ch2 extends StatelessWidget {
  const Ch2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
			body: Center(
				child: Container(
					padding: const EdgeInsets.all(8),
					// color: Colors.red, // Since we used BoxDecoration
					// clipBehavior: Clip.antiAlias,

					decoration: BoxDecoration(
						color: Colors.red,
						// shape: BoxShape.circle,
						borderRadius: BorderRadius.circular(10),
						gradient: const LinearGradient(
							colors: [
								Colors.pink,
								Colors.red,
							]
						),
						boxShadow: const [
							BoxShadow(
								color: Colors.grey,
								blurRadius: 15,
							)
						]
					),

					width: 100,
					height: 100,
					alignment: Alignment.center,

					child: const Text(
						"This is a box",
						textAlign: TextAlign.center,
						style: TextStyle(
							color: Colors.white,
							fontSize: 20,
							fontWeight: FontWeight.bold,
						),
					),
					
				),
			),
    );
  }
}
