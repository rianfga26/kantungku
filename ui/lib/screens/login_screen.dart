import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kantungku/controllers/authentication.dart';

import '../stores/LoginStore.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginWidget createState() => LoginWidget();
}

class LoginWidget extends State<LoginScreen> {
  final LoginStore store = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Image(image: AssetImage("images/logok.png")),
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Don't have account?",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 63, 63),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () => context.go('/register'),
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 51, 153, 137),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: const Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (text) {
                          store.setEmail(text);
                        },
                        decoration: InputDecoration(
                            hintText: "Insert Your Email",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: const Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (text) {
                          store.setPassword(text);
                        },
                        decoration: InputDecoration(
                            hintText: "Insert Your Password",
                            border: InputBorder.none),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 1000)),
                    TextButton(
                      onPressed: null,
                      child: Text("Forget Password",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 51, 153, 137),
                            fontSize: 20,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Observer(
                builder: (_) => ElevatedButton(
                  onPressed: () => login(store),
                  child: store.isLoading ? Text('Loading') : Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 51, 153, 137),
                    minimumSize: Size(250, 40),
                    foregroundColor: Colors.white                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(30),
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                    Container(
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(30),
                        color: Colors.black,
                        height: 1,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/google.png'),
                        width: 70,
                        height: 70,
                      ),
                      Text(
                        "Sign With Google",
                        style: TextStyle(
                            color: Color.fromARGB(255, 55, 0, 255),
                            fontSize: 20),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
