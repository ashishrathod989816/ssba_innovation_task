import 'package:flutter/material.dart';
import 'package:ssba_task/Utils/constant_colors.dart';

bottomsheet(String msg,BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
            alignment: Alignment.center,
            height:50,
            color: ConstantColors.themeColor,
            child: Text(
              msg,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
}

errorBottomsheet(String? msg,BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
            alignment: Alignment.center,
            height:50,
            color: Colors.red,
            child: Text(
              msg!,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
}