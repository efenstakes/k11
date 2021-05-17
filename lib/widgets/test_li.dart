import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:k11/models/test.dart';

class TestLiWidget extends StatelessWidget {
  final Test test;

  TestLiWidget({
    this.test,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Icon(
          test.isNegative ? Icons.done : Icons.warning_amber_rounded,
          color: test.isNegative ? Colors.green : Colors.yellow[900],
        ),
        title: Text(
          Jiffy(test.doneOn).jms,
        ),
        trailing: Text(
          test.isNegative ? 'OK' : '',
          style: TextStyle(
            color: test.isNegative ? Colors.green : Colors.yellow[900],
          ),
        ),
        // dense: true,
        isThreeLine: false,
      ),
    );
  }// build
}