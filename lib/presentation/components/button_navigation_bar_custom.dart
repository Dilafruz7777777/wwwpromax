import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/pages/home/chat.dart';
import 'package:wwwpromax/presentation/pages/home/home_page.dart';
import 'package:wwwpromax/presentation/pages/home/profile_page.dart';

import '../style/style.dart';
class ButtonNavigationComponent extends StatefulWidget {
  const ButtonNavigationComponent({Key? key}) : super(key: key);

  @override
  State<ButtonNavigationComponent> createState() => _ButtonNavigationComponentState();
}

class _ButtonNavigationComponentState extends State<ButtonNavigationComponent> {

  int current_index = 0;
  final List<Widget> pages = [HomePage(), ChatPage(), ProfilePage(), ];

  void OnTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.navigationBarColor,
      body: pages[current_index],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Container(
          height: 60.r,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Style.navigationBarColor,
                iconSize: 20.0,
                selectedIconTheme: IconThemeData(size: 28.0),
                selectedItemColor: Colors.black45,
                unselectedItemColor: Style.loadingGreyColor,
                selectedFontSize: 16.0,
                unselectedFontSize: 12,
                currentIndex: current_index,
                onTap: OnTapped,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),

                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),

                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),

                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(Icons.person),
                  //   label: "Account",
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}