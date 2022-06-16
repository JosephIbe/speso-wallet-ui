import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';

late Size size;

class ReferAndEarn extends StatelessWidget {

  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.2,
      padding: const EdgeInsets.all(Sizes.dimen_15),
      decoration: BoxDecoration(
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
        children: [
          RichText(
            text: const TextSpan(
              text: 'Refer a ',
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.dimen_20,
                fontWeight: FontWeight.w500
              ),
              children: [
                TextSpan(
                  text: 'Friend',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: Sizes.dimen_20,
                    fontWeight: FontWeight.w700
                  ),
                )
              ]
            ),
          ),
          const SizedBox(height: Sizes.dimen_5,),
          const Text(
            TextLiterals.earnXtraCash,
            style: TextStyle(
              color: Colors.white,
              fontSize: Sizes.dimen_18,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(height: Sizes.dimen_10,),
          Container(
            width: Sizes.dimen_150,
            height: Sizes.dimen_40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_5))
            ),
            child: Center(
              child: Text(
                TextLiterals.getStarted,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.dimen_20
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}