import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_now/widgets/primary_button.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 375.w,
            height: 812.h,
            color: Colors.white,
          ),
          Positioned(
            top: -120.h,
            left: -155.w,
            child: Container(
              width: 734.w,
              height: 734.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3F4F5),
              ),
            ),
          ),
          Positioned(
            top: -137.h,
            left: -180.w,
            child: Container(
              width: 734.w,
              height: 734.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Positioned(
            top: 212.h,
            left: 134.w,
            child: SizedBox(
              width: 106.w,
              height: 137.h,
              child: FittedBox(
                child: Image.asset('assets/images/HLogo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 464.h,
            width: 375.w,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                children: const [
                  TextSpan(text: "The Best Way to"),
                  TextSpan(
                      text: ' Transfer Money ',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  TextSpan(text: "Safely"),
                ],
              ),
            ),
          ),
          Positioned(
            top: 686.h,
            width: 375.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: const PrimaryButton(text: "Create new account"),
            ),
          ),
          Positioned(
            top: 759.h,
            width: 375.w,
            child: InkWell(
              onTap: () {},
              child: Text(
                "Already have account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // SizedBox(
          //   width: 375.w,
          //   child: Column(
          //     children: [
          //       VerticalSpacer(height: 212.h),

          //       VerticalSpacer(height: 115.h),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
