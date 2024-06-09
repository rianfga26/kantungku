import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kantungku/controllers/authentication.dart';
import '../stores/login_store.dart';

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
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: const Column(
                            children: [
                              Text(
                                "Don't have account?",
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
                            children: [
                              TextButton(
                                onPressed: () => context.goNamed('register'),
                                child: const Text(
                                  "Register",
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
              const Padding(padding: EdgeInsets.all(10)),
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
                        onChanged: (text) {
                          store.setEmail(text);
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
                        onChanged: (text) {
                          store.setPassword(text);
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
              const Padding(padding: EdgeInsets.all(30)),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 1000)),
                    TextButton(
                      onPressed: null,
                      child: Text("Forget Password",
                          style: TextStyle(
                            color: Color.fromARGB(255, 51, 153, 137),
                            fontSize: 20,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Observer(
                builder: (_) => ElevatedButton(
                  onPressed: () => login(context, store),
                  child: store.isLoading ? Text('Loading') : Text('Login'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 51, 153, 137),
                      minimumSize: Size(250, 40),
                      foregroundColor: Colors.white),
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
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Image(
                      //   image: AssetImage('assets/google.png'),
                      //   width: 70,
                      //   height: 70,
                      // ),
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
