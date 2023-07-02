import 'package:flutter/material.dart';

// Practice2
class Practice2 extends StatelessWidget {
  const Practice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("_AppInit_"),
      ),

			body: const SingleChildScrollView(
				child: Body(),
			),

			drawer: const PageDrawer(),

			floatingActionButton: const FloatingActionButton(
				onPressed: null,
				child: Icon(Icons.add),
			),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const Column(
			children: [
				CardText(),
				CardText(),
			],
		);
  }
}

class CardText extends StatelessWidget {
  const CardText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
			child: Padding(
				padding: EdgeInsets.all(16),
				child: Column(
					children: [
						Text("{key: 0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx}")
					],
				),
			),
		);
  }
}

class PageDrawer extends StatelessWidget {
  const PageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
			child: ListView(
				padding: const EdgeInsets.all(0),
				children: const [
					UserAccountsDrawerHeader(
						accountName: Text("Sumir"),
						accountEmail: Text("sumirvats@gmail.com"),
						currentAccountPicture: CircleAvatar(
							backgroundImage: NetworkImage(
								"https://yt3.ggpht.com/ytc/AGIKgqMl9TL4OpwS8Zc5jHrNnfO01f_Wbovye9mQzfp36Q=s48-c-k-c0x00ffffff-no-rj"
							),
						),
					),

					ListTile(
						leading: Icon(Icons.person),
						title: Text("Sumir Vats"),
						subtitle: Text("Developer"),
						trailing: Icon(Icons.edit),
					)
				],
			),
		);
  }
}
