import 'package:flutter/material.dart';
import 'package:login_signup/Screens/Sign_up.dart';
import 'package:login_signup/Custom_widgets/Customs_widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                large_Text(text: "Login Screen", color: Colors.blue, size: 32),
                const SizedBox(
                  height: 10,
                ),
                Small_Text(
                    text:
                        "Login now to track all your expenses\nand income at a place!",
                    color: Colors.black,
                    size: 16),
                const SizedBox(
                  height: 20,
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
                        controller: emailcontroller,
                        icon: Icons.alternate_email,
                        hintText: 'khuzaifa@gmail.com',
                      ),
                      const SizedBox(height: 12),
                      const Text("Password"),
                      const SizedBox(
                        height: 12,
                      ),
                      Text_Input_Field(
                        controller: passwordcontroller,
                        icon: Icons.lock,
                        hintText: '********',
                        isobscure: true,
                      ),
                      const SizedBox(height: 12),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget password ?",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1.50),
                                borderRadius: BorderRadius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Logo.png",
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text(
                              "Continue with Google",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don\'t have an Account?",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sign_up_Screen()))
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
