import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/pages/home/job_found.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 300.r,
              width: 440.r,
              decoration: BoxDecoration(
                gradient: Style.onboardingImageGradient4,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 230.r,
                        child: Image(
                          image: AssetImage(
                            "assets/images/logo.png",
                          ),
                        ),
                      ),
                      20.horizontalSpace,
                      Expanded(
                          child: Text(
                        "Through this application we want create various opportunities for females. Making money is not a thing you do - It is a skill you learn",
                        style: Style.homeTitleTextStyle(),
                      ))
                    ],
                  ),
                ],
              )),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 30),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return Job();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          height: 150.r,
                          width: 150.r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(48),
                              ),
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
                              color: Color(0xff7279AA)),
                          child: Image(
                            image: AssetImage(
                              "assets/images/1r.png",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "LOW SKILLED",
                          style: Style.HometextStyleBoldGreyColor1(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( left: 20,top: 30),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return Job();
                          }));
                        },


                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          height: 150.r,
                          width: 150.r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(48),
                              ),
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
                              color: Style.mainColor),
                          child: Image(
                            image: AssetImage(
                              "assets/images/2r.png",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "HIGH SKILLED",
                          style: Style.HometextStyleBoldGreyColor1(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 0, ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return Job();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 150.r,
                          width: 150.r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(48),
                              ),
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
                              color: Style.mainColor),
                          child: Image(
                            image: AssetImage(
                              "assets/images/3r.png",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "ONLINE  VACANCIES\n(pro version)",
                          style: Style.HometextStyleBoldGreyColor1(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( left: 0,),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return Job();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          height: 150.r,
                          width: 150.r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(48),
                              ),
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
                              color: Color(0xff7279AA)),
                          child: Image(
                            image: AssetImage(
                              "assets/images/4r.png",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "COLLABORATION",
                          style: Style.HometextStyleBoldGreyColor1(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
