import 'package:flutter/material.dart';
import 'package:tiktok/constraints.dart';
import 'package:tiktok/views/login.dart';

class Signup extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();

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
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundImage:AssetImage("images/avatar.jpg"),
                    ),
                    Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                        icon: Icon(Icons.add_a_photo),
                        onPressed: () {
                          print("select image");
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    controller: _usernamecontroller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                        label: Text("Username"),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 26,
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
                      "Already have an account ?",
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "sign in",
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
