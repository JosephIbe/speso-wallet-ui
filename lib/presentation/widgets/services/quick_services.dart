import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';
import 'package:speso/presentation/widgets/services/quick_service_item.dart';

late Size size;

class QuickServices extends StatelessWidget {

  QuickServices({Key? key}) : super(key: key);

  var titles = [
    TextLiterals.airtime,
    TextLiterals.payBill,
    TextLiterals.splitPay,
  ];

  var icons = [
    'assets/svgs/airtime.svg',
    'assets/svgs/dollar_circle.svg',
    'assets/svgs/dollar_circle.svg',
  ];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: Sizes.dimen_100,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (150 / 120),
          mainAxisSpacing: Sizes.dimen_10,
          crossAxisSpacing: Sizes.dimen_10,
        ),
        itemCount: titles.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return QuickServiceItem(
            title: titles[index],
            iconPath: icons[index],
          );
        },
      ),
    );
  }

}