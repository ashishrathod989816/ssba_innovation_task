
import 'package:flutter/material.dart';


class ErrorCatcher extends StatefulWidget {
  final String? msg;

  ErrorCatcher(
    this.msg,
  );
  @override
  _ErrorCatcherState createState() => _ErrorCatcherState();
}

class _ErrorCatcherState extends State<ErrorCatcher> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(Icons.sync_problem, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.msg!,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ]));
  }
}
