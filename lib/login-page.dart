import 'package:flutter/material.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/texts.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: const BoxDecoration(color: Colors.white),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            sizedBox(),
            
            Image.asset(
              "assets/raahi_logo.png",
              height: 150,
              width: 150,
              fit: BoxFit.contain,
              // filterQuality: FilterQuality.high,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     // Image.asset(
            //     //   'assets/logo/Smart City Logo - Final.png',
            //     //   height: 150,
            //     //   width: 150,
            //     // ),

            //   ],
            // ),
            // const Spacer(),
            sizedBox(),
            SizedBox(
              width: size.width,
              child: Form(
                key: _formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      texts.admin,
                      style: TextStyle(
                        color: Clrs.kAppPrimaryTextColor,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(
                        validator: (val) =>
                            val!.isEmpty ? "Name can't be empty." : null,
                        // autofocus: true,
                        // focusNode: FocusNode(),
                        controller: usernameController,
                        style: const TextStyle(
                            fontFamily: 'Poppins', fontSize: 20),
                        cursorColor: Clrs.kAppPrimaryColor,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          prefixIconColor: Clrs.kAppPrimaryColor,
                          hintText: ' User name',
                          hintStyle:
                              TextStyle(fontFamily: 'Poppins', fontSize: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(15),
                          //   ),
                          // ),
                          focusColor: Clrs.kAppPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(
                        controller: passwordController,
                        style: const TextStyle(
                            fontFamily: 'Poppins', fontSize: 20),
                        cursorColor: const Color.fromRGBO(37, 54, 84, 1),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                          ),
                          prefixIconColor: Clrs.kAppPrimaryColor,
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(fontFamily: 'Poppins', fontSize: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          focusColor: Clrs.kAppPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: InkWell(
                              onTap: () {
                                print('hello');
                              },
                              child: const Text(
                                'Forgotten password?',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(37, 54, 84, 1)),
                              )),
                        )),
                    sizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.offAndToNamed(
                              '/',
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Clrs.kAppPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 100),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBox(),
                    const SizedBox(
                      height: 15,
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    sizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Get.offAndToNamed(
                            //   '/login-otp',
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Clrs.kAppPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 60),
                            child: Center(
                              child: Text(
                                'Login via OTP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Container(
                    //   width: size.width / 2,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(),
                    //       borderRadius: BorderRadius.circular(15.0)),
                    //   padding: EdgeInsets.all(0.0),
                    //   child: TextButton(
                    //       onPressed: () {},
                    //       child: const Text(
                    //         'Log In via OTP',
                    //         style:
                    //             TextStyle(fontFamily: 'Poppins', fontSize: 20),
                    //       )),
                    // )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),

            // const Spacer(),
            // const Text(
            //   'Powered By ITS Planners And Engineers @ 2023',
            //   style: TextStyle(
            //       color: Clrs.kAppSecondaryTextColor,
            //       fontSize: 16,
            //       fontFamily: 'Poppins',
            //       fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Widget sizedBox() {
    return const SizedBox(
      height: 15,
    );
  }
}
