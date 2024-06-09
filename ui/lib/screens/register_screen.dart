import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kantungku/controllers/authentication.dart';
import 'package:kantungku/stores/register_store.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  registerWidget createState() => registerWidget();
}

class registerWidget extends State<Registerscreen> {
  final RegisterStore store = RegisterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/logo.png'),
                      radius: 20,
                    ),
                    const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: const Column(
                            children: <Widget>[
                              Text(
                                "You have an account?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 64, 63, 63),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  context.goNamed('login');
                                },
                                child: Text(
                                  "Login",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 51, 153, 137),
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
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Name",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (value) {
                          store.setName(value);
                        },
                        decoration: const InputDecoration(
                            hintText: "Insert Your Name",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Email",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (value) {
                          store.setEmail(value);
                        },
                        decoration: const InputDecoration(
                            hintText: "Insert Your Email",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (value) {
                          store.setPassword(value);
                        },
                        decoration: const InputDecoration(
                            hintText: "Insert Your Password",
                            border: InputBorder.none),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 51, 153, 137))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 153, 137),
                          fontSize: 20),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (value) {
                          setCpassword(value);
                        },
                        decoration: InputDecoration(
                            hintText: "Confirmation Your Password",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: () {
                  register(context, store);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 51, 153, 137),
                    minimumSize: const Size(250, 40),
                    foregroundColor: Colors.white),
                child: const Text('Register'),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                    Container(
                      child: const Text("OR"),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(30),
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/UNUSA_0.png'),
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
