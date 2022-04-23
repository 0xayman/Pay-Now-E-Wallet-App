import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/widgets/horizontal_spacer.dart';
import 'package:pay_now/widgets/vertical_spacer.dart';
import 'package:intl/intl.dart';

enum TransactionType { send, request }

class Transation {
  String userImage;
  String userName;
  String dateTime;
  double amount;
  TransactionType transactionType;

  Transation(
      {required this.userImage,
      required this.userName,
      required this.dateTime,
      required this.amount,
      required this.transactionType});
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Transation> transations = [
    Transation(
      userImage: 'yara.png',
      userName: 'Yara Khalil',
      dateTime: 'Oct 14, 10:24 AM',
      amount: 15.00,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'sara.png',
      userName: 'Sara Ibrahim',
      dateTime: 'Oct 12, 02:13 PM',
      amount: 20.50,
      transactionType: TransactionType.request,
    ),
    Transation(
      userImage: 'ahmed.png',
      userName: 'Ahmed Ibrahim',
      dateTime: 'Oct 11, 01:19 AM',
      amount: 12.40,
      transactionType: TransactionType.request,
    ),
    Transation(
      userImage: 'reem.png',
      userName: 'Reem Khaled',
      dateTime: 'Oct 07, 09:10 PM',
      amount: 21.30,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'hiba.png',
      userName: 'Hiba Saleh',
      dateTime: 'Oct 04, 05:45 AM',
      amount: 09.00,
      transactionType: TransactionType.request,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 262.h,
              width: 375.w,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            CustomPaint(
              size: Size(375.w, 262.h),
              painter: DrawTriangleShape(),
            ),
            Positioned(
              top: 48.h,
              width: 375.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20.w,
                      backgroundImage:
                          const AssetImage("assets/images/Profile Picture.png"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 120.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  "Hi, Amanda!",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 152.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190.h,
              width: 375.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$124.57",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: FittedBox(
                            child: SvgPicture.asset(
                              "assets/images/notifications_icon.svg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          right: 3.07.w,
                          top: -4.h,
                          child: Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const VerticalSpacer(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 49.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10.w),
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
                        "Send Money",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 49.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 21.w,
                        height: 21.h,
                        child: FittedBox(
                          child: SvgPicture.asset(
                            "assets/images/request_icon.svg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      const HorizontalSpacer(width: 4),
                      Text(
                        "Request Money",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const VerticalSpacer(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              )
            ],
          ),
        ),
        ..._buildTransactionsList(),
      ],
    );
  }

  List<Widget> _buildTransactionsList() {
    if (transations.isNotEmpty) {
      return [
        const VerticalSpacer(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: transations.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const VerticalSpacer(
                  height: 16,
                ),
                itemBuilder: (context, index) => TransactionCard(
                  transaction: transations[index],
                ),
              ),
            ),
          ),
        )
      ];
    } else {
      return [
        const VerticalSpacer(height: 89),
        SvgPicture.asset("assets/images/empty_illustration.svg"),
        const VerticalSpacer(height: 16),
        Text(
          "There’s no transactions till now!",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.5),
          ),
        )
      ];
    }
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key,
    required this.isActive,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool isActive;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 82.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20.w,
            height: 20.h,
            child: FittedBox(
              child: SvgPicture.asset(
                "assets/images/$icon.svg",
                color: isActive ? Colors.black : Colors.black.withOpacity(0.3),
              ),
              fit: BoxFit.fill,
            ),
          ),
          const VerticalSpacer(height: 6),
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.black.withOpacity(0.3),
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transation transaction;

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
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 20.w,
                backgroundColor: const Color(0xFFF3F4F5),
                backgroundImage:
                    AssetImage("assets/images/${transaction.userImage}"),
              ),
              Positioned(
                left: 25.w,
                top: 25.h,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: transaction.transactionType == TransactionType.send
                        ? SvgPicture.asset(
                            'assets/images/send_icon.svg',
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        : SvgPicture.asset(
                            'assets/images/request_icon.svg',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                  ),
                ),
              ),
            ],
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
                transaction.dateTime,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF1A1A1A).withOpacity(0.4),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            transaction.transactionType == TransactionType.send
                ? "-\$${formatCurrency(transaction.amount)}"
                : "+\$${formatCurrency(transaction.amount)}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint painter = Paint()
    ..color = const Color(0xFF3491DB)
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
