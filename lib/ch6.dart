import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Chapter 6 - Http Networking
class Ch6 extends StatefulWidget {
  const Ch6({super.key});

  @override
  State<Ch6> createState() => _Ch6State();
}

class _Ch6State extends State<Ch6> {
	var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
	var data;

	@override
	void initState() {
    super.initState();
		fetchData();
  }

	fetchData() async {
		var res = await http.get(url);
		data = jsonDecode(res.body);
		setState(() {});
	}

	@override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),

			body: data != null
			? ListView.builder(
				itemBuilder: (context, index) {
					return ListTile(
						title: Text(data[index]["title"]),
						subtitle: Text("ID: ${data[index]["id"]}"),
						leading: Image.network(data[index]["url"]),
					);
				},
				itemCount: data.length,
			)
			:const Center(
				child: CircularProgressIndicator(),
			),

			floatingActionButton: FloatingActionButton(
				onPressed: () {
					// myText = _nameController.text;
					// _nameController.text = "";
					// setState(() {});
				},
				child: const Icon(Icons.send),
			),

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
