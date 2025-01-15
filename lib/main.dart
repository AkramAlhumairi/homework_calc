import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
TextEditingController num1 = TextEditingController();
TextEditingController num2 = TextEditingController();
double value1 = 0;
int number1 = 0;
int number2 = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Akram Calculater",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 510,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 155,
                  child: TextField(
                    controller: num1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Number One",
                      fillColor: Colors.teal,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      try {
                        number1 = int.parse(value);
                      } catch (e) {
                        print("Please Enter Numbers");
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 155,
                  child: TextField(
                    controller: num2,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Number Two",
                      fillColor: Colors.teal,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      try {
                        number2 = int.parse(value);
                      } catch (e) {
                        print("Please Enter Numbers");
                      }
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  width: 155,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 1,
                      )
                    ],
                  ),
                  child: Text(
                    value1.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 10, left: 80),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {});
                            if (num1.text.isNotEmpty) {
                              if (num2.text.isNotEmpty) {
                                value1 =
                                    number1.toDouble() + number2.toDouble();
                                num1.clear();
                                num2.clear();
                              } else {
                                print("Please Enter Number Two");
                              }
                            } else {
                              print("Please Enter Number One");
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.teal),
                          ),
                          label: const Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {});
                            if (num1.text.isNotEmpty) {
                              if (num2.text.isNotEmpty) {
                                value1 =
                                    number1.toDouble() - number2.toDouble();
                                num1.clear();
                                num2.clear();
                              } else {
                                print("Please Enter Number Two");
                              }
                            } else {
                              print("Please Enter Number One");
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.teal),
                          ),
                          label: const Text(
                            "-",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 10, left: 80),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {});
                            if (num1.text.isNotEmpty) {
                              if (num2.text.isNotEmpty) {
                                value1 =
                                    number1.toDouble() / number2.toDouble();
                                num1.clear();
                                num2.clear();
                              } else {
                                print("Please Enter Number Two");
                              }
                            } else {
                              print("Please Enter Number One");
                            }
                          },
                          
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.teal),
                          ),
                          label: const Text(
                            "/",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 40,
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {});
                            if (num1.text.isNotEmpty) {
                              if (num2.text.isNotEmpty) {
                                value1 =
                                    number1.toDouble() * number2.toDouble();
                                num1.clear();
                                num2.clear();
                              } else {
                                print("Please Enter Number Two");
                              }
                            } else {
                              print("Please Enter Number One");
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.teal),
                          ),
                          label: const Text(
                            "*",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
