import 'package:flutter/material.dart';

// Practice1
class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
			body: const Center(
				child: CardWidget(),
			),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
			width: 300,
			height: 450,
			alignment: Alignment.center,

			decoration: BoxDecoration(
				gradient: const LinearGradient(
					colors: [
						Color.fromARGB(255, 226, 226, 226),
						Color.fromARGB(255, 173, 173, 173),
					],
				),

				borderRadius: BorderRadius.circular(15),
				
				boxShadow: const [BoxShadow(
					blurRadius: 20,
					color: Colors.black,
				)],
			),

			child: const Text(
				"This is a Card",
				style: TextStyle(
					fontSize: 30,
					fontWeight: FontWeight.bold,
				),
			),
		);
  }
}
