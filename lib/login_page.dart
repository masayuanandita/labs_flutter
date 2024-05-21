import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController inputUser = TextEditingController();
  final TextEditingController inputPass = TextEditingController();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(
              "Log In",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1, color: Color.fromARGB(255, 226, 173, 173)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ],
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: inputUser,
                    decoration: const InputDecoration(labelText: "Username"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: inputPass,
                    decoration: const InputDecoration(labelText: "Password"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "/home");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                  setState(() {
                    username = inputUser.text;
                    password = inputPass.text;
                  });
                },
                child: const Text("Login")),
            Row(
              children: [
                Text("Username: $username",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(width: 10),
                Text("Password: $password"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
