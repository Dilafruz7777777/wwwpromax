import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/loading_container.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onboarding2.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onbording4.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            70.verticalSpace,
            Container(
              height: 350.r,
              width: 350.r,
              child: Image(
                image: AssetImage(
                  "assets/images/onbor1.png",
                ),
              ),
            ),
            40.verticalSpace,

            Text(
              "Quick & Easy Payments",
              style: Style.textStyleBoldOnboarding(),
            ),
            20.verticalSpace,
            25.horizontalSpace,

            Text(
              "Get your business by accepting card\n payments with the new card reader ",
              style: Style.textStyleNormOnboarding(),
            ),
            50.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
                8.horizontalSpace,
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
                8.horizontalSpace,
                LoadingContainer(color: Style.mainColor, height: 11, weight: 32),
                8.horizontalSpace,
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
              ],
            ),
            40.verticalSpace,
            InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
                  return Onboarding4();
                }
                ), (route) => false);
              },
              child:  Image(
                image: AssetImage(
                  "assets/images/load3.png",
                ),
              ),
            ),
          ]
      ),
    );
  }
}