// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:login_signup/Custom_widgets/Customs_widgets.dart';
import 'package:login_signup/Screens/login.dart';

class Sign_up_Screen extends StatelessWidget {
  Sign_up_Screen({super.key});

  final TextEditingController emailController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  large_Text(text: "Register", color: Colors.blue, size: 30),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Create an ",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    TextSpan(
                        text: "account",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " to access all the\nfeatures of ",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    TextSpan(
                        text: "Maxpense!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ])),
                  const SizedBox(
                    height: 12,
                  ),
                  Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email"),
                          const SizedBox(
                            height: 12,
                          ),
                          Text_Input_Field(
                              controller: emailController,
                              hintText: "khuzaifa@gmail.com",
                              icon: Icons.alternate_email),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Your Name"),
                          const SizedBox(
                            height: 12,
                          ),
                          Text_Input_Field(
                              controller: nameController,
                              hintText: "Khuzaifa afridi",
                              icon: Icons.person_2_outlined),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Your Password"),
                          const SizedBox(
                            height: 12,
                          ),
                          Text_Input_Field(
                            controller: passwordController,
                            hintText: "********",
                            icon: Icons.lock_open_outlined,
                            isobscure: true,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: large_Text(
                                text: "Register",
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Small_Text(
                          text: "Already have an account?",
                          color: Colors.black,
                          size: 16),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Small_Text(
                              text: "Login", color: Colors.blue, size: 16))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
