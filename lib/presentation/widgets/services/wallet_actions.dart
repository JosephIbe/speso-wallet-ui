import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';
import 'package:speso/presentation/widgets/services/wallet_actions_item.dart';

late Size size;

class WalletActions extends StatelessWidget {

  WalletActions({Key? key}) : super(key: key);

  var titles = [
    TextLiterals.topUp,
    TextLiterals.withdraw,
    TextLiterals.receive,
    TextLiterals.transactions,
  ];

  var icons = [
    'assets/svgs/airtime.svg',
    'assets/svgs/dollar_circle.svg',
    'assets/svgs/dollar_circle.svg',
    'assets/svgs/dollar_circle.svg',
  ];

  var colors = [
    Colors.blue,
    Colors.redAccent,
    Colors.teal,
    Colors.deepPurple
  ];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: Sizes.dimen_85,
      constraints: const BoxConstraints(
        minHeight: Sizes.dimen_85
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: titles.length,
          childAspectRatio: (150 / 140),
          mainAxisSpacing: Sizes.dimen_0,
          crossAxisSpacing: Sizes.dimen_0,
        ),
        itemCount: titles.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return WalletActionsItem(
            title: titles[index],
            iconPath: icons[index],
            color: colors[index],
          );
        },
      ),
    );
  }

}