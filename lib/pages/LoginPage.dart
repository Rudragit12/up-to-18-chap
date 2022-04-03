import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                "asset/images/grow.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "enter user name"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "enter  Password"),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
