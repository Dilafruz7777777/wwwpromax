import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/components/textfrom_field_search.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  late TextEditingController search = TextEditingController();

  void initState() {
    search = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      20.verticalSpace,
                      20.horizontalSpace,
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(

                          Icons.arrow_circle_left_outlined,
                          color: Style.loadingGreyColor,
                          size: 35,
                        ),
                      ),
                      Expanded(
                        child: SEarchTextFormField(
                            controller: search, label: "Search your job"),
                      ),
                    ],
                  ),
                ),

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(children: [
              Text("10 jobs found", style: Style.textformLabelStyle(),),
              220.horizontalSpace,
              Icon(Icons.sort, color: Style.loadingGreyColor,size: 28,)
            ],),
          ),
          20.verticalSpace,

          Container(
            height: 190.r,
            width: 380.r,
            decoration: BoxDecoration(
              color: Style.whiteColor,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                children: [
                  Row(children: [
                    Icon(Icons.star_border_outlined, color: Colors.black38,size: 35,),
                    Icon(Icons.star_border_outlined, color: Colors.black38,size: 35,),
                    Icon(Icons.star_border_outlined, color: Colors.black38,size: 35,),
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, top: 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 220, top: 10),
                          child: Text("Teacher",style: Style.jobtextStyle()),
                        ),
                        5.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text("Ahadova Maftuna",style: Style.textStylelittleOnboarding()),
                        ),
                        5.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text("Uzbekistan, Tashkent",style: Style.textStylelittleOnboarding()),
                        ),
                        5.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.only(right: 145),
                          child: Text("initial amount: 150k",style: Style.incomeTextStyle()),
                        ),

                      ],
                    ),
                  ),




                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
