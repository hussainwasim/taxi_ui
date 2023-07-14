import 'package:flutter/material.dart';
import 'package:goaira_task/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final iskeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
              body: Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  right: 10,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      color: Colors.transparent,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        icon: Icon(Icons.arrow_forward)),
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 400,
                  height: 680,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                      )),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Confirming Your Ride",
                              style: TextStyle(
                                  //  color: kPrimaryBlueColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      Positioned(
                          top: 80,
                          left: 20,
                          child: Container(
                            height: 42,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "Today price P\/99-D\/98 ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          )),
                      Positioned(
                        top: 180,
                        left: 150,
                        child: Image.asset('assets/images/man.png'),
                      ),
                      Positioned(
                          top: 280,
                          right: 20,
                          child: Container(
                            height: 42,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "Goaira Price/km",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          )),
                      Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        height: 114,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Benefits at Goaira",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "⚫ No peak time and platform charges",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "⚫ Transparent billing ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF263238)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 180,
                        left: 35,
                        child: Image.asset('assets/images/star.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
