import 'package:bh_task_flutter/screens/detailed_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dressImage =
      "https://images.unsplash.com/photo-1538386668797-dd16a7c3712a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fGxhdW5kcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

  TextEditingController _pickUpDate = TextEditingController();
  TextEditingController _pickUpTime = TextEditingController();

  Widget customRegisterButton(String buttonTitle, HexColor color) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 15, right: 15),
      child: Container(
        height: 50,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              buttonTitle,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(primary: color),
          ),
        ),
      ),
    );
  }

  Widget customTextFieldWidget(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: TextField(
          style: TextStyle(color: Colors.black),
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: title,
            hintStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Image.network(
                  dressImage,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.42,
                          padding: EdgeInsets.all(30),
                          color: Colors.lightBlue[50],
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Discount Banner",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.42,
                          padding: EdgeInsets.all(30),
                          color: Colors.teal.shade600,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Discount Banner",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Quick Order",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: HexColor("#23395d"),
                          height: size.height * 0.08,
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: Colors.teal.shade600,
                                    height: size.height * 0.045,
                                    width: size.width * 0.26,
                                    child: ElevatedButton(
                                      child: Text("Today"),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.teal.shade600,
                                        elevation: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: size.height * 0.045,
                                    width: size.width * 0.26,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          color: HexColor("#23395d"),
                                        ),
                                      ),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    color: Colors.white,
                                    height: size.height * 0.045,
                                    width: size.width * 0.26,
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                          child: Text(
                                            "More",
                                            style: TextStyle(
                                              color: HexColor("#23395d"),
                                            ),
                                          ),
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            elevation: 0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: HexColor("#23395d"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.lightBlue[50],
                          height: size.height * 0.2,
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              customTextFieldWidget(
                                  "Pick Up Date", _pickUpDate),
                              SizedBox(
                                height: size.height * 0.026,
                              ),
                              customTextFieldWidget(
                                  "Pick Up Time", _pickUpTime),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.teal.shade600,
                          height: size.height * 0.07,
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Expected Delivery Date is 24 Hrs\n From Pick Up Date",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              customRegisterButton(
                "Place Order",
                HexColor("#23395d"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Detailed Order",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailedOrderScreen(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: size.height * 0.3,
                        width: double.infinity,
                        color: Colors.lightBlue[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 15.0,
                                    animation: true,
                                    percent: 0.63,
                                    center: new Text(
                                      "63%",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.blueGrey[900],
                                    backgroundColor: Colors.tealAccent.shade100,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: size.height * 0.04,
                                    ),
                                    Text(
                                      "Order Number : 2345678",
                                      style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    Text(
                                      "Confirmed",
                                      style: TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        color: Colors.teal[400],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(16),
                              height: size.height * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.teal.shade600,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Collection Date : 20-1-2022  Collection Time : 9:30 AM",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                    Text(
                                      "Delivery Date : 20-1-2022  Delivery Time : 11:00 AM",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
