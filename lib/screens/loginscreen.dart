import 'package:bh_task_flutter/screens/home.dart';
import 'package:bh_task_flutter/screens/registerscreen.dart';
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String backgroundImage =
      "https://images.unsplash.com/photo-1574538298279-26973f60efa3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bGF1bmRyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

  TextEditingController _phoneNumber = TextEditingController();

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

  Widget customLoginButton(String buttonTitle, Color color) {
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
                  builder: (context) => Home(),
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

  Widget customRegisterButton(String buttonTitle, Color color) {
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
                  builder: (context) => RegisterScreen(),
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
                  height: size.height * 0.5,
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
                            "Sign In Now",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        customTextFieldWidget("Phone Number", _phoneNumber),
                        customLoginButton("Get OTP", Colors.teal),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Don't have an account",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.018,
                        ),
                        customRegisterButton(
                            "Register Now", Colors.purple.shade900),
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
                  padding: EdgeInsets.only(bottom: size.height * 0.09),
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
