import 'package:flutter/material.dart';
import 'package:ssba_task/Utils/constant_colors.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: ConstantColors.themeColor,

    );
  }
}
