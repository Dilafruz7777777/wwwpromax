import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/button_component.dart';
import 'package:wwwpromax/presentation/components/loading_container.dart';
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
          150.verticalSpace,
          Stack(
            children: [
              Expanded(

                child: Image(
                  image: AssetImage(
                    "assets/images/onbor.png",
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 60,
                child: Text(
                  "Your convenience in\n making a todo list",
                  style: Style.textStyleBoldOnboarding(),
                ),
              ),
            ],
          ),
          10.horizontalSpace,
          Text(
            "Here's a mobile platform that helps you ",
            style: Style.textStyleBoldOnboarding(),
          ),
          Text(
            "create task or to list so that it can help you",
            style: Style.textStyleBoldOnboarding(),
          ),
          Text(
            " in every job easier and faster. ",
            style: Style.textStyleBoldOnboarding(),
          ),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadingContainer(
                  color: Style.loadingBlueColor, height: 12, weight: 13),
              8.horizontalSpace,
              LoadingContainer(color: Style.loadingGreyColor, height: 11, weight: 32),
              8.horizontalSpace,
              LoadingContainer(
                  color: Style.loadingBlueColor, height: 12, weight: 13),
            ],
          ),
          90.verticalSpace,
          InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
                  return Container(color: Colors.yellowAccent,);
                }
                ), (route) => false);
              },
              child: ButtonComponent(
                color: Style.loadingBlueColor,
                text: "Continue",
              )),
        ],
      ),
    );
  }
}