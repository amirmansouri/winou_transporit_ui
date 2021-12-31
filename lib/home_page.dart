import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:location/location.dart';
import 'package:winou_transporit/deuxiem.dart';
import 'package:winou_transporit/widget/liquid_swipe.dart';

import 'LocationApp.dart';

class  HomePage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    //     icon: Icon(Icons.send)),
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("WinouTranporit")),
      ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(

   

          child: Container(

            child: Column(
              children: <Widget>[

                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        // image: AssetImage('assets/images/background.png'),
                       image: AssetImage('assets/images/back.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/light-1.png'))),
                        ),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/light-2.png'))),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/clock.png'))),
                        ),
                      ),

                      // Positioned(
                      //   child: Container(
                      //     margin: EdgeInsets.only(top: 50),
                      //
                      //     child: Center(
                      //
                      //       child: Text(
                      //         "WinouTransporit"
                      //            ,
                      //         style: TextStyle(
                      //             color: Colors.blue,
                      //             fontSize: 40,
                      //             fontWeight: FontWeight.bold),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
             
                  child: Column(

                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey))),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    prefix: Icon(Icons.email),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    prefix: Icon(Icons.password),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                          IconButton(onPressed: ()async{
    print("button clicked ");
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text);
    if (user != null) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => App()));
    } else {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => LocationApp()));
                          } },icon: Icon(Icons.send)),
                          //
                          // onPressed: () async {
                          //   print("button clicked ");
                          //   await FirebaseAuth.instance
                          //       .signInWithEmailAndPassword(
                          //           email: emailController.text,
                          //           password: passwordController.text);
                          //   if (user != null) {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => App()));
                          //   } else {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => App()));
                          //   }
                          // },
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
    // IconButton(
  }


}
