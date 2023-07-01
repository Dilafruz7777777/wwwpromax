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
              height: 200.r,
              width: 200.r,
              child: Image(
                image: AssetImage(
                  "assets/images/obor2.png",
                ),
              ),
            ),
            40.verticalSpace,

            Text(
              "HIGH SKILLED",
              style: Style.textStyleBoldOnboarding(),
            ),
            20.verticalSpace,
            25.horizontalSpace,

            SizedBox(
              height: 200.r,
              width: 350.r,
              child: Text(
                "Introducing the perfect solution for\nwomen who are seeking flexible job \nopportunities that value their skills and diploma/certificate qualifications. Our app offers a multitudnof job options, from\nteaching and tutoring to massaging and beyond.",
                style: Style.textStyleNormOnboarding(),
              ),
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
                8.horizontalSpace,
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