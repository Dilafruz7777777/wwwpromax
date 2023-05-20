import 'package:flutter/material.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onboard1.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 15), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Onboarding1(),
        ),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Style.mainColor,
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            // child: Image.asset(

            //
            //     "assets/images/logo.png",
            //
            // ),

          child: Image(image: AssetImage('assets/images/logo.png')),
          ),

          // 280.verticalSpace,
          // 420.horizontalSpace,
          // // LogoComponent(),
          // Text(
          //   "Todyapp ",
          //   style: Style.textStyleBoldLogoWhite(),
          // ),
          // 30.verticalSpace,
          // Text(
          //   "The best to do list application for you ",
          //   style: Style.textStyleNormSizeWhite(),
          // ),
          // 100.verticalSpace,
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       LoadingContainer(
          //           color: Style.loadingColor, height: 11, weight: 32),
          //       8.horizontalSpace,
          //       LoadingContainer(
          //           color: Style.loadingColor, height: 12, weight: 13),
          //       8.horizontalSpace,
          //       LoadingContainer(
          //           color: Style.loadingColor, height: 12, weight: 13),
          //     ]),
        ],
      ),
    );
  }
}