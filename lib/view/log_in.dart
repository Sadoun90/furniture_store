import 'package:flutter/material.dart';
import 'package:furniture_store/core/models/colors.dart';
import 'package:furniture_store/view/Shopping_view.dart';
import 'package:furniture_store/view/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isObscure = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'WELCOME  BACK',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text('Email'),
                      // hintText: 'Enter your email ',
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter your Email';
                      } else if (value.length < 9) {
                        return 'Please enter at least 9 characters';
                      }
                      return null;
                    },
                    obscureText: isObscure,
                    decoration: InputDecoration(
                        label: Text('password'),
                        // hintText: 'Enter your email ',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: AppColors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            icon: Icon(isObscure
                                ? Icons.visibility_off
                                : Icons.remove_red_eye_outlined))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: AppColors.grey, fontSize: 15),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              shadowColor: Colors.grey,
                              backgroundColor: AppColors.black,
                              foregroundColor: Colors.white),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShoppingView(),
                                  ));
                            }
                          },
                          child: Text('Login'))),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: AppColors.grey, fontSize: 15),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
