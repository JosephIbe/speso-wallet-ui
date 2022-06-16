import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speso/common/constants/size_constants.dart';

class WalletActionsItem extends StatelessWidget {

  final String iconPath;
  final String title;
  final Color color;

  const WalletActionsItem({
    required this.iconPath,
    required this.title,
    required this.color,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.dimen_150,
      height: Sizes.dimen_120,
      // padding: const EdgeInsets.all(Sizes.dimen_15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Sizes.dimen_50,
            height: Sizes.dimen_50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                color: Colors.white,
                height: Sizes.dimen_25,
              ),
            ),
          ),
          const SizedBox(height: Sizes.dimen_10,),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.dimen_14
            ),
          )
        ],
      ),
    );
  }

}