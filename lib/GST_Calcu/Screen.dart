import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String OR = "";
  double Gst = 0;
  double FP = 0;
  double Rate = 0;
  double i = 0;

  List c1 = [
    Color(0xffEEEEEE),
    Color(0xffEEEEEE),
    Color(0xffEEEEEE),
    Color(0xffEEEEEE),
    Color(0xffEEEEEE)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ORIGINAL PRICE",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "$OR RS.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "GST",
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                c1[0] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                Gst = double.parse(OR);
                                FP = (3 * Gst) / 100;
                                Rate = FP;
                                FP = FP + Gst;
                              });
                            },
                            child: Box("3", c1[0]),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                c1[1] = Colors.orange;
                                c1[0] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                Gst = double.parse(OR);
                                FP = (5 * Gst) / 100;
                                Rate = FP;
                                FP = FP + Gst;
                              });
                            },
                            child: Box("5", c1[1]),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                c1[2] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                Gst = double.parse(OR);
                                FP = (12 * Gst) / 100;
                                Rate = FP;
                                FP = FP + Gst;
                              });
                            },
                            child: Box("12", c1[2]),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                c1[3] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                Gst = double.parse(OR);
                                FP = (18 * Gst) / 100;
                                Rate = FP;
                                FP = FP + Gst;
                              });
                            },
                            child: Box("18", c1[3]),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                c1[4] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                Gst = double.parse(OR);
                                FP = (28 * Gst) / 100;
                                Rate = FP;
                                FP = FP + Gst;
                              });
                            },
                            child: Box("28", c1[4]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FINAL PRICE",
                        style: TextStyle(fontSize: 20),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "$FP Rs.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 250,
                height: 75,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CGST/SGST",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "${Rate / 2}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '7';
                                });
                              },
                              child: Box2("7"),
                            ),
                          ),
                          SizedBox( height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '8';
                                });
                              },
                              child: Box2("8"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '9';
                                });
                              },
                              child: Box2("9"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '4';
                                });
                              },
                              child: Box2("4"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '5';
                                });
                              },
                              child: Box2("5"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '6';
                                });
                              },
                              child: Box2("6"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        OR = '';
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "AC",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '1';
                                });
                              },
                              child: Box2("1"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '2';
                                });
                              },
                              child: Box2("2"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '3';
                                });
                              },
                              child: Box2("3"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '00';
                                });
                              },
                              child: Box2("00"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '0';
                                });
                              },
                              child: Box2("0"),
                            ),
                          ),
                          SizedBox(height: 100,width: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '.';
                                });
                              },
                              child: Box2("."),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        OR = OR.substring(0, OR.length - 1);
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String data, Color c12) {
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
        color: c12,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        "$data%",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text(
          "$data",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}