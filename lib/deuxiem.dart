
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winou_transporit/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child:
          Column(
            children: [
              IconButton(icon: Icon(Icons.send), onPressed: signout,
              ),
            ],
          )
      ),
    );
  }
}

Future<HomePage> signout() async {
  await FirebaseAuth.instance.signOut();
  print("logout");
  return HomePage();
}
