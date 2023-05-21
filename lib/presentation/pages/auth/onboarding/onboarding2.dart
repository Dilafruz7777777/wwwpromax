import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/button_component.dart';
import 'package:wwwpromax/presentation/components/loading_container.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onbording3.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
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
              "Smart Point Of Sale",
              style: Style.textStyleBoldOnboarding(),
            ),
            20.verticalSpace,
            25.horizontalSpace,

            Text(
              "Complete point of sale system \ntailored to your business needs. ",
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
                LoadingContainer(color: Style.mainColor, height: 11, weight: 32),
                8.horizontalSpace,
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
                LoadingContainer(
                    color: Style.loadingGreyColor, height: 12, weight: 13),
              ],
            ),
            40.verticalSpace,
            InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
                  return Onboarding3();
                }
                ), (route) => false);
              },
              child:  Image(
                image: AssetImage(
                  "assets/images/load2.png",
                ),
              ),
            ),
          ]
      ),
    );
  }
}