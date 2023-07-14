import 'package:flutter/material.dart';
import 'package:goaira_task/screens/second.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _displaySheet(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Image.asset(
                "assets/images/map.png",
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    _displaySheet(context);
                  },
                  child: Text(
                    "Click Here To Book",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future _displaySheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 691,
              width: 375,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(55),
                    topLeft: Radius.circular(55),
                  )),
              child: Stack(children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: 128,
                    width: 375,
                    color: Color(0xFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/radio.png'),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 3,
                                width: 10,
                                //  height: 20,
                                indent: 10,
                                endIndent: 20,
                              ),
                              Image.asset('assets/images/redradio.png'),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                // height: 30,
                                width: 300,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Perambur',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      border: UnderlineInputBorder()),
                                ),
                              ),
                              // Divider(
                              //   color: Colors.grey,
                              //   thickness: 3,
                              // ),
                              SizedBox(
                                // height: 30,
                                width: 300,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Perambur',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      border: UnderlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    height: 105,
                    width: 395,
                    color: Color(0xFFF0EFEF),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/clock.png'),
                              Text(
                                "Schedule",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            "Mini",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Image.asset('assets/images/car.png')
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(55),
                          topLeft: Radius.circular(55),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "11 KM",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "11:35pm dropoff",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Text(
                                  "500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SwipeableButtonView(
                            onFinish: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            onWaitingProcess: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            activeColor: Color(0xFFC4C4C4),
                            buttonWidget:
                                Image.asset('assets/images/buttonimg.png'),
                            buttonText: 'Swipe to Search ',
                            buttontextstyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ));
  }
}
