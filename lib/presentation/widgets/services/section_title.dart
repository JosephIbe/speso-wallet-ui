import 'package:flutter/material.dart';
import 'package:speso/common/constants/size_constants.dart';

class SectionTitle extends StatelessWidget {

  final String title;

  const SectionTitle({
    required this.title,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: Sizes.dimen_25
      ),
    );
  }

}