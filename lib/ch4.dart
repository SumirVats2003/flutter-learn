import 'package:flutter/material.dart';

// Chapter 4 - Floating Action Button and Material Drawer
class Ch4 extends StatelessWidget {
  const Ch4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),

			body: Center(
				child: Container(
					height: 100,
					width: 100,
					color: Colors.teal,
				),
			),

			floatingActionButton: FloatingActionButton(
				onPressed: () {},
				child: const Icon(Icons.edit),
			),
			// floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

			drawer: Drawer(
				child: ListView(
					padding: const EdgeInsets.all(0),
					children: <Widget>[
						// DrawerHeader(
						// 	decoration: BoxDecoration(
						// 		color: Colors.purple,
						// 	),
						// 	child: Text("Hi I am Drawer"),
						// ),

						const UserAccountsDrawerHeader(
							accountName: Text("Sumir Vats"),
							accountEmail: Text("sumirvats@gmail.com"),
							currentAccountPicture: CircleAvatar(
								backgroundImage: NetworkImage(
									"https://yt3.ggpht.com/ytc/AGIKgqMl9TL4OpwS8Zc5jHrNnfO01f_Wbovye9mQzfp36Q=s48-c-k-c0x00ffffff-no-rj"
								),
							),
						),

						ListTile(
							leading: const Icon(Icons.person),
							title: const Text("Sumir Vats"),
							subtitle: const Text("App Developer"),
							trailing: const Icon(Icons.edit),
							onTap: () {},
						),

						const ListTile(
							leading: Icon(Icons.email),
							title: Text("sumirvats@gmail.com"),
							subtitle: Text("Main Email"),
							trailing: Icon(Icons.edit),
						),

						const ListTile(
							leading: Icon(Icons.phone),
							title: Text("8057116000"),
							// subtitle: Text("App Developer"),
							trailing: Icon(Icons.edit),
						),

					],
				),
			),
		
    );
  }
}
