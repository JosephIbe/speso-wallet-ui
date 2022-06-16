import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';
import 'package:speso/common/constants/text_constants.dart';
import 'package:speso/presentation/widgets/services/quick_services.dart';
import 'package:speso/presentation/widgets/services/refer_and_earn.dart';
import 'package:speso/presentation/widgets/services/section_title.dart';
import 'package:speso/presentation/widgets/services/wallet_actions.dart';
import 'package:speso/presentation/widgets/services/wallet_balance.dart';

late Size size;

class Services extends StatelessWidget {

  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.withOpacity(0.1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: Sizes.dimen_0,
          title: Text(
            TextLiterals.services,
            style: TextStyle(
              fontSize: Sizes.dimen_25,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.dimen_10,
            vertical: Sizes.dimen_25,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WalletBalance(),
                const SizedBox(height: Sizes.dimen_15,),

                WalletActions(),
                const SizedBox(height: Sizes.dimen_20,),

                const SectionTitle(title: TextLiterals.quickServices),
                const SizedBox(height: Sizes.dimen_10,),
                QuickServices(),
                const SizedBox(height: Sizes.dimen_20,),

                const SectionTitle(title: TextLiterals.referEarn),
                const SizedBox(height: Sizes.dimen_10,),
                const ReferAndEarn()
              ],
            ),
          )
        ),
      ),
    );
  }

}