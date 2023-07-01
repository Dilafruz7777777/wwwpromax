import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/loading_container.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onboarding2.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        70.verticalSpace,
        Container(
          height: 220.r,
          width: 220.r,
          child: Image(
            image: AssetImage(
              "assets/images/onbor1.png",
            ),
          ),
        ),
        40.verticalSpace,
        Text(
          "LOW SKILLED",
          style: Style.textStyleBoldOnboarding(),
        ),
        20.verticalSpace,
        25.horizontalSpace,
        Text(
          " new app designed exclusively for\n females seeking employment without\n the need for formal education or \ncertificates. With this app, you can\neasily find a job as a waiter, babysitter,\n cleaner and many other opportunities\n           tailored to your needs. ",
          style: Style.textStyleNormOnboarding(),
        ),
        50.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadingContainer(color: Style.mainColor, height: 11, weight: 32),
            8.horizontalSpace,
            LoadingContainer(
                color: Style.loadingGreyColor, height: 12, weight: 13),
            8.horizontalSpace,
            LoadingContainer(
                color: Style.loadingGreyColor, height: 12, weight: 13),
            8.horizontalSpace,
            LoadingContainer(
                color: Style.loadingGreyColor, height: 12, weight: 13),
          ],
        ),
        40.verticalSpace,
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (_) {
              return Onboarding2();
            }), (route) => false);
          },
          child: Image(
            image: AssetImage(
              "assets/images/load1.png",
            ),
          ),
        ),
      ]),
    );
  }
}
