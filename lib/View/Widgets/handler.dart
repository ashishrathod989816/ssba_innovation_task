import 'package:flutter/material.dart';
import 'package:ssba_task/Utils/constant_colors.dart';


class Handler extends StatefulWidget {
  final String? msg;
  final Function? reloadFunction;
  Handler(this.msg, this.reloadFunction);
  @override
  _HandlerState createState() => _HandlerState();
}

class _HandlerState extends State<Handler> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Icon(Icons.sync_problem, 
                // color:Strings.appBarColor,
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.msg!,
              // style: TextStyle(color: ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color:ConstantColors.themeColor,
              onPressed: widget.reloadFunction as void Function()?,
              child: Text(
                "Reload",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]));
  }
}
