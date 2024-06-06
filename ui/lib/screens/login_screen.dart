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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage('assets/google.png'),
                      width: 100,
                      height: 100,
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
                                onPressed: null,
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
              Padding(padding: EdgeInsets.all(40)),
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
                height: 80,
              ),
              Observer(
                builder: (_) => ElevatedButton(
                  onPressed: () => login(store),
                  child: store.isLoading ? Text('Loading') : Text('Login'),
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
