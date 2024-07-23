import 'package:flutter/material.dart';
import 'package:tiktok/constraints.dart';
import 'package:tiktok/views/signup.dart';

class Login extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(children: [
                Text(
                  "Tiktok Clone",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: buttonColors),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "enter email address",
                        label: Text("email"),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  child: TextField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    obscuringCharacter: "#",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "enter password",
                        label: Text("Password"),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                InkWell(
                  onTap: () {
                    print("hello");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: buttonColors),
                    child: Text(
                      "login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account ?",
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup()));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: buttonColors),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
