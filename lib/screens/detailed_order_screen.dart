import 'package:bh_task_flutter/model/detailed_grid_list.dart';
import 'package:bh_task_flutter/model/detailed_order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailedOrderScreen extends StatelessWidget {
  List detailedOrderList = [
    DetailedOrderDetails(title: "Household", icons: "assets/images/houses.png"),
    DetailedOrderDetails(title: "Men", icons: "assets/images/man.png"),
    DetailedOrderDetails(title: "Women", icons: "assets/images/woman.png"),
    DetailedOrderDetails(
        title: "Industrial", icons: "assets/images/factory.png"),
    DetailedOrderDetails(title: "Others", icons: "assets/images/toys.png"),
  ];

  List detailedGridList = [
    DetailedGridList(title: "Pant", icons: "assets/images/trousers.png"),
    DetailedGridList(title: "Trousers", icons: "assets/images/short.png"),
    DetailedGridList(title: "Shirt", icons: "assets/images/shirt.png"),
    DetailedGridList(title: "Jacket", icons: "assets/images/jacket.png"),
    DetailedGridList(title: "T-Shirt", icons: "assets/images/tshirt.png"),
    DetailedGridList(title: "Shirt", icons: "assets/images/shirt.png"),
  ];

  Widget detailedOrderListWidget() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: detailedOrderList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: CircleAvatar(
                    radius: (30),
                    backgroundColor: Colors.teal.shade600,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        detailedOrderList[index].icons,
                        height: 40,
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                detailedOrderList[index].title.toString(),
              ),
            ],
          );
        });
  }

  Widget customListView1(Size size) {
    return Container(
      height: size.height * 0.56,
      width: size.width * 0.186,
      child: ListView.builder(
          itemCount: detailedGridList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  detailedGridList[index].icons,
                  height: size.height * 0.054,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  detailedGridList[index].title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget customButton(String buttonTitle, HexColor color) {
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

  Widget customAddButton(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: size.height * 0.07,
          width: size.width * 0.2,
          color: Colors.teal.shade600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "AED 140",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "-",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.08,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                    ),
                    child: Text(
                      "0",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.teal.shade600,
                      ),
                    ),
                  ),
                  Text(
                    "+",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ],
              )
            ],
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
        title: Text(
          "Detailed Order",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.6,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: size.height * 0.16,
                // width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: detailedOrderList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: CircleAvatar(
                                radius: (30),
                                backgroundColor: Colors.teal.shade600,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    detailedOrderList[index].icons,
                                    height: 40,
                                    fit: BoxFit.fill,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            detailedOrderList[index].title.toString(),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  // height: size.height * 0.5,
                  width: double.infinity,
                  color: Colors.lightBlue[50],
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: size.height * 0.074),
                          Text(
                            "Items",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          customListView1(size),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/delicate.png",
                            height: size.height * 0.054,
                          ),
                          Text(
                            "Wash",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/temperature-control.png",
                            height: size.height * 0.054,
                          ),
                          Text(
                            "Dry Wash",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/iron.png",
                            height: size.height * 0.054,
                          ),
                          Text(
                            "Iron",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                          customAddButton(size),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantity : 0",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Total Price : AED 0",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: customButton(
                "Done",
                HexColor("#23395d"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
