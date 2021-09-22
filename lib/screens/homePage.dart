import 'package:calculator/constant/constantexports.dart';
import 'package:calculator/controller/controller.dart';
import 'package:calculator/function/appfunction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // adding varible

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealGreenLight,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 250.0,
              child: Center(
                child: Image.asset("assets/logo.png"),
              ),
            ),
            //body
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bills",
                    style: titlestyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: billController,
                    onEditingComplete: () {
                      setState(() {
                        if (billController.text.isNotEmpty) {
                          bill = double.parse(billController.text);
                        } else {
                          bill = 0;
                        }

                        FocusScope.of(context).unfocus();
                        calculate();
                      });
                    },
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      fillColor: lightTeal90,
                      filled: true,
                      border: InputBorder.none,
                      hintText: "eg: 100",
                      prefixIcon: Icon(Icons.attach_money_rounded),
                    ),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: darktealGreen),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    "Select Tip %",
                    style: titlestyle,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  //button Grid
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          height: 60.0,
                          color: darktealGreen,
                          onPressed: () {
                            setState(() {
                              tip = 0.05;
                              calculate();
                            });
                          },
                          child: Text(
                            "5%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: FlatButton(
                          height: 60.0,
                          color: darktealGreen,
                          onPressed: () {
                            setState(() {
                              tip = 0.10;
                              calculate();
                            });
                          },
                          child: Text(
                            "10%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          height: 60.0,
                          color: darktealGreen,
                          onPressed: () {
                            setState(() {
                              tip = 0.15;
                              calculate();
                            });
                          },
                          child: Text(
                            "15%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: FlatButton(
                          height: 60.0,
                          color: darktealGreen,
                          onPressed: () {
                            setState(() {
                              tip = 0.20;
                              calculate();
                            });
                          },
                          child: Text(
                            "20%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          height: 60.0,
                          color: darktealGreen,
                          onPressed: () {
                            setState(() {
                              tip = 0.25;
                              calculate();
                            });
                          },
                          child: Text(
                            "25%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: tipController,
                          onEditingComplete: () {
                            setState(() {
                              if (tipController.text.isNotEmpty) {
                                tip = double.parse(tipController.text) / 100;
                              } else {
                                tip = 0;
                              }

                              FocusScope.of(context).unfocus();
                              calculate();
                            });
                          },
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            fillColor: lightTeal90,
                            filled: true,
                            border: InputBorder.none,
                            hintText: "Custom",
                          ),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: darktealGreen),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Number of People",
                    style: titlestyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: personController,
                    onEditingComplete: () {
                      setState(() {
                        if (personController.text.isNotEmpty) {
                          person = int.parse(personController.text);
                        } else {
                          person = 1;
                        }

                        FocusScope.of(context).unfocus();
                        calculate();
                      });
                    },
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      fillColor: lightTeal90,
                      filled: true,
                      border: InputBorder.none,
                      hintText: "eg: 5",
                      prefixIcon: Icon(Icons.person),
                    ),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: darktealGreen),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: darktealGreen,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tip Amount",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "/ person",
                                  style: TextStyle(
                                      fontSize: 18.0, color: semiTealGreen),
                                ),
                              ],
                            ),
                            Text(
                              "\$${tipPerPerson.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "/ person",
                                  style: TextStyle(
                                      fontSize: 18.0, color: semiTealGreen),
                                ),
                              ],
                            ),
                            Text(
                              "\$${totalPerPerson.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: FlatButton(
                              height: 60.0,
                              color: tealGreen,
                              onPressed: () {
                                setState(() {
                                  tip = 0;
                                  person = 1;
                                  bill = 0;
                                  calculate();
                                  tipController.clear();
                                  billController.clear();
                                  personController.clear();
                                });
                              },
                              child: Text(
                                "RESET",
                                style: TextStyle(
                                    color: darktealGreen,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
