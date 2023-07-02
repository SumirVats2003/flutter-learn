import 'package:flutter/material.dart';

// Chapter 5 - Images, Card Widget, Text Field, ScrollView
class Ch5 extends StatefulWidget {
  const Ch5({super.key});

  @override
  State<Ch5> createState() => _Ch5State();
}

class _Ch5State extends State<Ch5> {
	var myText = "Change my Name";
	final TextEditingController _nameController = TextEditingController();

	// @override
	// void initState() {
  //   super.initState();
  // }

	// @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),

			body: Center(
				child: Padding(
					padding: const EdgeInsets.all(16),
					child: SingleChildScrollView(
						child: Card(
							child: Column(
								children: [
									Image.asset(
										"assets/sumir.jpg",
										// width: 100,
										// height: 100,
										// fit: BoxFit.fitWidth,
									),

									const SizedBox(
										height: 20,
									),

									Text(
										myText,
										style: const TextStyle(
											fontSize: 20,
											fontWeight: FontWeight.bold,
										),
									),

									const SizedBox(
										height: 20,
									),

									Padding(
										padding: const EdgeInsets.all(16.0),
										child: TextField(
											controller: _nameController,
											decoration: const InputDecoration(
												border: OutlineInputBorder(),
												hintText: "Enter Text",
												labelText: "Name",
											),
										),
									)
								],
							),
						),
					),
				),
			),

			floatingActionButton: FloatingActionButton(
				onPressed: () {
					myText = _nameController.text;
					_nameController.text = "";
					setState(() {});
				},
				child: const Icon(Icons.send),
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
