import 'package:flutter/material.dart';
import 'package:furniture_store/core/models/colors.dart';
import 'package:furniture_store/view/Shopping_view.dart';
import 'package:furniture_store/view/log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'WELCOME',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text('Name'),
                      // hintText: 'Enter your email ',
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid email';
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
                        return 'Please enter a name';
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
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the password';
                      } else if (value.length < 9) {
                        return 'Please enter the same password';
                      }
                      return null;
                    },
                    obscureText: isObscure,
                    decoration: InputDecoration(
                        label: Text('Confirm Password'),
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
                    height: 50,
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
                          child: Text('Sign up'))),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account ?',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogIn(),
                                ));
                          },
                          child: Text(
                            'SIGN IN',
                            style:
                                TextStyle(color: AppColors.black, fontSize: 15),
                          ))
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
