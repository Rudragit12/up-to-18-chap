import 'package:flutter/material.dart';
import 'package:flutter_revision_upto_18/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  movingToHomepage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                    "Welcome $name",
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
                              labelText: "Username",
                              hintText: "enter user name"),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "please enter username";
                            else
                              return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "enter  Password"),
                          obscureText: true,
                          validator: (Value) {
                            if (Value == null || Value.isEmpty)
                              return "please enter password";
                            else if (Value.length <= 6)
                              return "password length at least 6 ";
                            else
                              return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  /* ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("Login"),
                  ), */
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () => movingToHomepage(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 40,
                      width: changeButton ? 50 : 150,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.black,
                            )
                          : Text(
                              "login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
