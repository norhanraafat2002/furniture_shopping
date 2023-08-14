/*
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //GlobalKey<FormState> formstate = GlobalKey<FormState>();
    final formkey = GlobalKey<FormState>();
    TextEditingController userNameController = TextEditingController();
    TextEditingController emailAddressController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();
    String username, emailaddress, password, mobilenumber;

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          //margin: EdgeInsets.all(35),
          padding: EdgeInsets.all(20),

          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Padding(padding: EdgeInsets.all(16)),
                    Text(
                      "Join Us",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Creat an account so you can stay up to data with eweasom recipes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff606060),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: "First and Last name",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA3A3A3),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE6E6E6),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    username = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter username';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: emailAddressController,
                  decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA3A3A3),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    )),
                  ),
                  onChanged: (value) {
                    emailaddress = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter Emailaddress';
                    } else if (!value.contains('@')) {
                      return 'Email must contain @';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password (8-20 Characthers)",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA3A3A3),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    )),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter password';
                    } /*else if (!value.contains("8 characters")) {
                      return 'Password must not contain less than 8 characters ';
                    }*/
                  },
                ),
                SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: mobileNumberController,
                  decoration: InputDecoration(
                    hintText: "Mobile number (For delivery updates)",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA3A3A3),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    )),
                  ),
                  onChanged: (value) {
                    mobilenumber = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter Mobile number';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("By joining savory you agree"),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate() == true) {
                      print("valid");
                    } else {
                      print("Not valid");
                    }
                    if (formkey.currentState != null) {
                      formkey.currentState!.validate();
                    }
                    /*if (formkey.currentState!.validate()) {
                      
                    }*/
                  },
                  child: Text("Join Us"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffD53C25),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue with",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("instagram"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2E2E2E),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Feacebook"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4760A9),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Twetter"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff1DA1F2),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
