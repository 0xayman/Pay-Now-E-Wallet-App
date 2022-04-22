import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SizedBox(
          width: 106.w,
          height: 137.h,
          child: FittedBox(
            child: Image.asset('assets/images/Logo.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
