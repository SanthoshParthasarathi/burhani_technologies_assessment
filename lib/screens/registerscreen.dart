import 'package:bh_task_flutter/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String backgroundImage =
      "https://images.unsplash.com/photo-1489274495757-95c7c837b101?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxhdW5kcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

  TextEditingController _phoneNumber = TextEditingController();

  TextEditingController _fullName = TextEditingController();

  TextEditingController _email = TextEditingController();

  Widget customTextFieldWidget(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 12, left: 12),
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

  Widget customElevatedButton(String buttonTitle, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 60, right: 60),
      child: Container(
        height: 50,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: size.height * 0.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.lightBlue[50],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WELCOME",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.018,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        customTextFieldWidget("Full Name", _fullName),
                        customTextFieldWidget("Email", _email),
                        customTextFieldWidget("Phone Number", _phoneNumber),
                        SizedBox(
                          height: size.height * 0.022,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.016,
                        ),
                        customElevatedButton("Lets Go", Colors.teal),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.29),
                  child: Container(
                    child: Image.asset("assets/images/sketchley_logo.jpg"),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
