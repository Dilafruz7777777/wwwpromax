import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Style.loginBcColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Container(
                height: 200,
                width: 390,
                decoration: BoxDecoration(
                  color: Style.mainColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(48),
                      bottomLeft: Radius.circular(48)),
                  boxShadow: [
                    BoxShadow(
                      color: Style.loadingGreyColor,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                  ],
                ),
              ),
              150.verticalSpace,
              Positioned(
                top: 150.r,
                right: 20.r,
                child: Container(
                  height: 650.r,
                  width: 400.r,
                  decoration: BoxDecoration(
                    color: Style.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        color: Style.loadingGreyColor,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: Column(
                    children: [
                      40.verticalSpace,
                      Row(
                        children: [
                          60.horizontalSpace,
                          Text("LOG IN ", style: Style.textStyleBoldMainColor(),),
                          70.horizontalSpace,
                          Text("SIGN UP ", style: Style.textStyleBoldGreyColor(),),

                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          30.horizontalSpace,
                          Container(
                            height: 5.r,
                            width: 150.r,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                              color: Style.mainColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Style.loadingGreyColor,
                                  offset: const Offset(
                                    4.0,
                                    4.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
