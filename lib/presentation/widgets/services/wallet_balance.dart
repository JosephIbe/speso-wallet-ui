import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';

late Size size;

class WalletBalance extends StatelessWidget {

  const WalletBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.25,
      padding: const EdgeInsets.all(Sizes.dimen_15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 1,
            // blurRadius: 15,
            blurStyle: BlurStyle.outer,
            offset: Offset(-10, -10)
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            offset: Offset(0, 0)
          ),
        ],
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(Sizes.dimen_15)),
          gradient: const SweepGradient(
            colors: [
              Colors.blue,
              Colors.deepPurple,
              Colors.blue,
              Colors.tealAccent,
              Colors.blue,
            ],
            center: Alignment.center,
            startAngle: 0,
            endAngle: 270,
            // stops: [0.2, .4, .55, .68, 1],
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/wallet_banner.png')
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            TextLiterals.wallet,
            style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.dimen_20,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: Sizes.dimen_5,),
          Text(
            TextLiterals.balance,
            style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.dimen_20,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: Sizes.dimen_15,),
          Text(
            '\u20A6 40000000.00',
            style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.dimen_25,
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }

}