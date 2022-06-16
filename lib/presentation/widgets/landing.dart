import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';
import 'package:speso/presentation/screens/chat.dart';
import 'package:speso/presentation/screens/profile.dart';
import 'package:speso/presentation/screens/scan.dart';
import 'package:speso/presentation/screens/services.dart';
import 'package:speso/presentation/widgets/bottom_nav_bar_item.dart';

class Landing extends StatefulWidget {

  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  late Size size;

  int selectedNavIndex = 0;

  final _pages = [
    const Chat(),
    const Scan(),
    const Services(),
    const Me(),
  ];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: _pages[selectedNavIndex],
        bottomNavigationBar: Material(
          elevation: Sizes.dimen_3,
          color: Colors.white,
          child: Container(
            color: Colors.white,
            width: size.width,
            height: Sizes.dimen_70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavBarItem(
                  title: TextLiterals.chat,
                  iconPath: 'assets/svgs/messages-3.svg',
                  isActive: selectedNavIndex == 0,
                  onNavItemTapped: ()=> setState(()=> selectedNavIndex = 0),
                ),
                BottomNavBarItem(
                  title: TextLiterals.scan,
                  iconPath: 'assets/svgs/scan_2.svg',
                  isActive: selectedNavIndex == 1,
                  onNavItemTapped: ()=> setState(()=> selectedNavIndex = 1),
                ),
                BottomNavBarItem(
                  title: TextLiterals.services,
                  iconPath: 'assets/svgs/services.svg',
                  isActive: selectedNavIndex == 2,
                  onNavItemTapped: ()=> setState(()=> selectedNavIndex = 2),
                ),
                BottomNavBarItem(
                  title: TextLiterals.me,
                  iconPath: 'assets/svgs/me.svg',
                  isActive: selectedNavIndex == 3,
                  onNavItemTapped: ()=> setState(()=> selectedNavIndex = 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}