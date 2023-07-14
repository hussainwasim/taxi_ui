import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: MapsWidget(),

      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/images/map.png',
              height: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            left: 10,
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
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
                    onPressed: () {}, icon: Icon(Icons.question_mark_rounded)),
              )),
          Positioned(
            top: 400,
            child: Container(
              height: 400,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "PIN for this ride",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Center(
                              child: Image.asset('assets/images/icon.png')),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 270,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68.0),
                    child: Text('Auto',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Bajaj",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFB5B5B5)),
                          ),
                          Text(
                            "TN 17 AK 1987",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF263238)),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/auto.png")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 52,
                        width: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFF263238),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 35,
                        )),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF0000),
                            minimumSize: Size(179, 52),
                            elevation: 5),
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 200,
              left: 150,
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/images/man.png'),
                  ),
                  Text(
                    "Raja",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/images/tick.png'),
                      ),
                      Text(
                        "VACCINED",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
