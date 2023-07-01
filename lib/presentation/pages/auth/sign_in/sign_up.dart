import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/button_component.dart';
import 'package:wwwpromax/presentation/components/custom_textform_field.dart';
import 'package:wwwpromax/presentation/pages/home/home_page.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  late TextEditingController first_name = TextEditingController();
  late TextEditingController last_name = TextEditingController();
  late TextEditingController confirm_password = TextEditingController();
  late TextEditingController phone_number = TextEditingController();
  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    first_name = TextEditingController();
    last_name = TextEditingController();
    confirm_password = TextEditingController();
    phone_number = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    first_name.dispose();
    last_name.dispose();
    confirm_password.dispose();
    phone_number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
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
                100.verticalSpace,
                Positioned(
                  top: 150.r,
                  right: 20.r,
                  child: SingleChildScrollView(
                    child: Container(
                      height: 750.r,
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
                              Text("LOG IN ", style: Style.textStyleBoldGreyColor(),),
                              80.horizontalSpace,
                              Text("SIGN UP ", style: Style.textStyleBoldMainColor(),),

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
                              20.horizontalSpace,
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
                            ],
                          ),
                          25.verticalSpace,
                          CustomTextForm_Field(controller: first_name, label: "Email"),
                          15.verticalSpace,
                          CustomTextForm_Field(controller: last_name, label: "Email"),
                          15.verticalSpace,
                          CustomTextForm_Field(controller: password, label: "Email"),
                          15.verticalSpace,
                          CustomTextForm_Field(controller: confirm_password, label: "Email"),
                          15.verticalSpace,
                          CustomTextForm_Field(controller: email, label: "Email"),
                          15.verticalSpace,
                          CustomTextForm_Field(controller: phone_number, label: "Password"),
                          20.verticalSpace,
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return HomePage();
                                }));
                              },
                              child: ButtonComponent(color: Style.mainColor, text: "SIGN UP"))
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
