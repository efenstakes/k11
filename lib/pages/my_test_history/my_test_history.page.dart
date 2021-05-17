import 'package:flutter/material.dart';


import 'package:k11/models/test.dart';
import 'package:k11/widgets/test_li.dart';

import 'package:k11/styles/text_styles.dart';

// data
import 'package:k11/data/tests_data.dart' as testData;


class MyTestHistoryPage extends StatefulWidget {
  @override
  _MyTestHistoryPageState createState() => _MyTestHistoryPageState();
}

class _MyTestHistoryPageState extends State<MyTestHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Status'
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [

            SizedBox(height: 56),
            
            // filter
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                InkWell(
                  child: Row(
                    children: [
                      
                      Text(
                        'Filter'
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.filter_list_outlined,
                      ),

                    ],
                  ),
                ),

              ],
            ),

            SizedBox(height: 16),

            // list
            ...testData.tests.map((Test test) {
              return TestLiWidget(test: test);
            }).toList(),

          ],
        ),
      ),
    );
  }
}