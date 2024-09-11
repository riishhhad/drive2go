import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      children: [
        Container(
          width: 430.w,
          height: 932.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.09, 1.00),
              end: Alignment(0.09, -1),
            ),
          ),child: Container(width:47,height: 70,color: Colors.black ,),
          ),
      ],
    ),
    );
  }
}
