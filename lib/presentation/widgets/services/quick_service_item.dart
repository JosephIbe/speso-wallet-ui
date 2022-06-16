import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speso/common/constants/size_constants.dart';

class QuickServiceItem extends StatelessWidget {

  final String iconPath;
  final String title;

  const QuickServiceItem({
    required this.iconPath,
    required this.title,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.dimen_15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: Colors.blue,
            height: Sizes.dimen_25,
          ),
          const SizedBox(height: Sizes.dimen_10,),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.dimen_15
            ),
          )
        ],
      ),
    );
  }

}