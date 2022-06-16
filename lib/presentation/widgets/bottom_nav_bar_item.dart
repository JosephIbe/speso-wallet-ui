import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speso/common/constants/size_constants.dart';

class BottomNavBarItem extends StatelessWidget {

  final String title;
  final String iconPath;
  final bool isActive;
  final VoidCallback onNavItemTapped;

  const BottomNavBarItem({
    required this.title,
    required this.iconPath,
    required this.isActive,
    required this.onNavItemTapped,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
          onTap: onNavItemTapped,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                color: isActive ? Theme.of(context).primaryColor : Colors.grey,
                width: Sizes.dimen_25,
                height: Sizes.dimen_25,
              ),
              const SizedBox(height: Sizes.dimen_10,),
              Text(
                title,
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: 2,
                style: TextStyle(
                  color: isActive ? Theme.of(context).primaryColor : Colors.grey,
                  fontSize: isActive ? Sizes.dimen_15 : Sizes.dimen_12,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.w400
                ),
              )
            ],
          )
      ),
    );
  }

}