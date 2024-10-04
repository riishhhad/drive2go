import 'package:drive2go/Bloc/Signup/signup_bloc.dart';
import 'package:drive2go/Ui/bottomnavigation.dart';
import 'package:drive2go/Ui/home.dart';
import 'package:drive2go/Ui/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 430.w,
          height: 932.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.09, 1.00),
              end: Alignment(0.09, -1),
              colors: [
                Colors.black,
                Color(0xFF272C2F),
                Color(0xFF525E64),
                Color(0xFF3B4F58),
                Color(0xFF01293B)
              ],
            ),
          ),
          child: SingleChildScrollView(
              child: BlocListener<SignupBloc, SignupState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            child: Form(
              key: _formKey,
              child: Column(children: [
                SizedBox(
                  height: 146.h,
                ),
                Text(
                  'Create New Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF6F6F6),
                    fontSize: 32.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.80.w,
                  ),
                ),
                SizedBox(
                  height: 68.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: TextFormField(
                    controller: fullname,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                        color: Colors.white, decorationThickness: 0.sp),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 25.w),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.18000000715255737),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20.r)),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Color(0xFFA7B0BB),
                        fontSize: 16.sp,
                        fontFamily: 'sf prodisplay',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your name!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: TextFormField(
                    controller: email,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                        color: Colors.white, decorationThickness: 0.sp),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 25.w),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.18000000715255737),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20.r)),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        color: Color(0xFFA7B0BB),
                        fontSize: 16.sp,
                        fontFamily: 'sf prodisplay',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: TextFormField(
                    controller: phonenumber,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                        color: Colors.white, decorationThickness: 0.sp),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 25.w),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.18000000715255737),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20.r)),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        color: Color(0xFFA7B0BB),
                        fontSize: 16.sp,
                        fontFamily: 'sf prodisplay',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid number';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: TextFormField(controller: password,
                    cursorColor: Colors.grey,
                    style: TextStyle(
                        color: Colors.white, decorationThickness: 0.sp),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 25.w),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.18000000715255737),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20.r)),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFFA7B0BB),
                        fontSize: 16.sp,
                        fontFamily: 'sf prodisplay',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 85.h,
                ),
                BlocListener<SignupBloc, SignupState>(
                  listener: (context, state) {
                    if (state is SignupBlocLoading) {
                      showDialog(
                          context: context,
                          builder: (ctx) => Center(
                                child: CircularProgressIndicator(),
                              ));
                      print("loading");
                    }
                    if (state is SignupBlocLoaded) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => signin()),
                          (route) => false);
                    }
                    if (state is SignupBlocError) {
                      Navigator.of(context).pop();

                      print("error");
                    }
                  },
                  child: GestureDetector(
                    onTap: () {
                      final isValid = _formKey.currentState!.validate();
                      if (isValid) {
                        BlocProvider.of<SignupBloc>(context).add(Fetchsignupevent(
                            name: fullname.text,
                            email: email.text,
                            phone: phonenumber.text,
                            password: password.text));

                      }
                      _formKey.currentState!.save();

                    },
                    child: Container(
                      width: 350.w,
                      height: 73.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFDDE0E3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Center(
                        child: Text('Sign UP',
                            style: TextStyle(
                              color: Color(0xFF01293B),
                              fontSize: 20.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20.w,
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 212.w,
                  height: 19.h,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          'Don’t have an account',
                          style: TextStyle(
                            color: Color(0xFFDDE0E3),
                            fontSize: 16.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 155.w,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => bottomnaviation()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xFF0078FF),
                              fontSize: 16.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ))),
    );
  }
}
