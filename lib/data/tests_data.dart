import 'package:jiffy/jiffy.dart';
import 'package:k11/models/test.dart';

List<Test> tests = [

  Test(
    id: 'x09489299420',
    isNegative: true,
    doneOn: Jiffy().subtract( days: 4 ).dateTime,
  ),
  
  Test(
    id: 'x09489299422',
    isNegative: false,
    doneOn: Jiffy().subtract( days: 19 ).dateTime,
  ),
  
  Test(
    id: 'x09489299423',
    isNegative: true,
    doneOn: Jiffy().subtract( days: 25 ).dateTime,
  ),
  

];