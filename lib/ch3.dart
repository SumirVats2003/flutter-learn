import 'package:flutter/material.dart';

// Chapter 3 - Rows and Columns
class Ch3 extends StatelessWidget {
  const Ch3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),

			body: Container(
				height: 500,
				width: 500,
				color: Colors.teal,
				child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
						Container(
							// margin: const EdgeInsets.all(8),
							padding: const EdgeInsets.all(8),
							width: 100,
							height: 100,
							alignment: Alignment.center,
							color: Colors.red,
						),

						Container(
							// margin: const EdgeInsets.all(8),
							padding: const EdgeInsets.all(8),
							width: 100,
							height: 100,
							alignment: Alignment.center,
							color: Colors.yellow,
						),

						Container(
							// margin: const EdgeInsets.all(8),
							padding: const EdgeInsets.all(8),
							width: 100,
							height: 100,
							alignment: Alignment.center,
							color: Colors.green,
						),
					],
				),
			),

    );
  }
}
