import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:pay_now/widgets/horizontal_spacer.dart';
import 'package:pay_now/widgets/vertical_spacer.dart';

class Request {
  String userImage;
  String userName;
  double amount;

  Request({
    required this.userImage,
    required this.userName,
    required this.amount,
  });
}

class RequestsScreen extends StatelessWidget {
  RequestsScreen({Key? key}) : super(key: key);

  final List<Request> octTransactions = [
    Request(
      userImage: 'nisreen.png',
      userName: 'Nisreen Ismail',
      amount: 10.50,
    ),
    Request(
      userImage: 'ahmed.png',
      userName: 'Ahmed Ibrahim',
      amount: 8.0,
    ),
    Request(
      userImage: 'yara.png',
      userName: 'Yara Khalil',
      amount: 13.00,
    ),
    Request(
      userImage: 'yara.png',
      userName: 'Yara Khalil',
      amount: 15.0,
    ),
  ];

  final List<Request> sepTransactions = [
    Request(
      userImage: 'hiba.png',
      userName: 'Hiba Saleh',
      amount: 12.50,
    ),
    Request(
      userImage: 'sahar.png',
      userName: 'Sahar Fawzi',
      amount: 54.00,
    ),
    Request(
      userImage: 'reem.png',
      userName: 'Reem Khaled',
      amount: 20.00,
    ),
    Request(
      userImage: 'sara.png',
      userName: 'Sara Ibrahim',
      amount: 25.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(
              15.w,
            ),
            height: 102.h,
            width: 375.w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black.withOpacity(0.1),
                  width: 1.h,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: FittedBox(
                    child: SvgPicture.asset(
                      'assets/images/back_icon.svg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Requests",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                ),
              ],
            ),
          ),
          const VerticalSpacer(height: 24),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "October, 2020",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: octTransactions.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const VerticalSpacer(
                        height: 16,
                      ),
                      itemBuilder: (context, index) => RequestCard(
                        transaction: octTransactions[index],
                      ),
                    ),
                    const VerticalSpacer(height: 24),
                    Text(
                      "September, 2020",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: sepTransactions.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const VerticalSpacer(
                        height: 16,
                      ),
                      itemBuilder: (context, index) => RequestCard(
                        transaction: sepTransactions[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 81.h,
        width: 375.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.w),
            topRight: Radius.circular(20.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: const Offset(0, -10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: InkWell(
            child: Container(
              height: 49.h,
              width: 345.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.w),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 21.w,
                    height: 21.h,
                    child: FittedBox(
                      child: SvgPicture.asset(
                        "assets/images/send_icon.svg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const HorizontalSpacer(width: 4),
                  Text(
                    "Send All Payment",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Request transaction;

  String formatCurrency(double amount) {
    final NumberFormat numberFormat = NumberFormat("#,##00.00", "en_US");
    return numberFormat.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.w,
            backgroundColor: const Color(0xFFF3F4F5),
            backgroundImage:
                AssetImage("assets/images/${transaction.userImage}"),
          ),
          const HorizontalSpacer(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                transaction.userName,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 1),
              Text(
                "-\$${formatCurrency(transaction.amount)}",
                style: TextStyle(
                  color: const Color(0xFF1A1A1A).withOpacity(0.4),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 40.h,
            width: 81.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.w),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: FittedBox(
                    child: SvgPicture.asset(
                      "assets/images/send_icon.svg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                const HorizontalSpacer(width: 4),
                Text(
                  "Send",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
