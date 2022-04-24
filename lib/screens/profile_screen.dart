import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/widgets/horizontal_spacer.dart';
import 'package:pay_now/widgets/vertical_spacer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: const Color(0xFFF3F4F5),
          height: 262.h,
          width: 375.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                const VerticalSpacer(height: 53),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                    ),
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/edit_icon.svg',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const VerticalSpacer(height: 24),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.w,
                  child: Center(
                    child: Text(
                      "H",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.sp,
                        color: const Color(0xFF1A1A1A),
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 8),
                Text(
                  "Hisham Zayadnh",
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        const VerticalSpacer(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Container(
                height: 64.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/profile_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "My Info",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/arrow_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpacer(height: 16),
              Container(
                height: 64.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/card_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "My Cards",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/arrow_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpacer(height: 16),
              Container(
                height: 64.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/settings_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/arrow_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpacer(height: 16),
              Container(
                height: 64.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/help_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "Help Center",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/arrow_icon.svg',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
