import 'package:flutter/material.dart';
import 'package:learn/pages/home_page.dart';
import 'package:learn/utils/constants.dart';

// Chapter 7 - Forms, Stack and Navigation - A Login Page
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),

			body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/sumir.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Username"
                            ),
                          ),
            
                          const SizedBox(
                            height: 20,
                          ),
                    
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password"
                            ),
                          ),
            
                          const SizedBox(
                            height: 20,
                          ),
                    
                          ElevatedButton(
                            onPressed: () {
                              Constants.prefs?.setBool("loggedIn", true);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const HomePage()
                              //   )
                              // );
                              Navigator.pushReplacementNamed(
                                context, HomePage.routeName
                              );
                            },
                            child: const Text("Sign In"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
