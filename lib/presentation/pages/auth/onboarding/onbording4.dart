import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/loading_container.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onboarding2.dart';
import 'package:wwwpromax/presentation/pages/auth/sign_in/log_in.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class Onboarding4 extends StatefulWidget {
  const Onboarding4({Key? key}) : super(key: key);

  @override
  State<Onboarding4> createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
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
                  "assets/images/obor2.png",
                ),
              ),
            ),
            40.verticalSpace,

            Text(
              "Instant Notifications",
              style: Style.textStyleBoldOnboarding(),
            ),
            20.verticalSpace,
            25.horizontalSpace,

            Text(
              "Instant notifications let you quickly\n see new purchases and messages ",
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
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
                LoadingContainer(color: Style.mainColor, height: 11, weight: 32),
              ],
            ),
            40.verticalSpace,
            InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
                  return LogIn();
                }
                ), (route) => false);
              },
              child:  Image(
                image: AssetImage(
                  "assets/images/load4.png",
                ),
              ),
            ),
          ]
      ),
    );
  }
}