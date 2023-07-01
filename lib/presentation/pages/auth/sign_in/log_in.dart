import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/button_component.dart';
import 'package:wwwpromax/presentation/components/custom_textform_field.dart';
import 'package:wwwpromax/presentation/pages/auth/sign_in/sign_up.dart';
import 'package:wwwpromax/presentation/pages/home/home_page.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

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
                child: SingleChildScrollView(
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
                            80.horizontalSpace,
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return SignUP();
                                }));
                              },
                                child: Text("SIGN UP ", style: Style.textStyleBoldGreyColor(),)),

                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            30.horizontalSpace,
                            Container(
                              height: 5.r,
                              width: 160.r,
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
                            20.horizontalSpace,
                            Container(
                              height: 5.r,
                              width: 160.r,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8),),
                                color: Style.loadingGreyColor,
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
                        ),
                        25.verticalSpace,

                        SizedBox(
                          height: 230.r,
                          child: Image(
                            image: AssetImage(
                              "assets/images/login.png",
                            ),
                          ),
                        ),

                        CustomTextForm_Field(controller: email, label: "Email"),
                        15.verticalSpace,
                        CustomTextForm_Field(controller: password, label: "Password"),
                        20.verticalSpace,
                        InkWell(

                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_){
                                return HomePage();
                              }));
                            },
                            child: ButtonComponent(color: Style.mainColor, text: "LOG IN"))
                      ],
                    ),
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
