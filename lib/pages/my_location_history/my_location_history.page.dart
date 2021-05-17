import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:k11/models/location.dart';
import 'package:k11/models/test.dart';
import 'package:k11/pages/home/home_drawer.dart';
import 'package:k11/pages/my_profile/my_profile.page.dart';
import 'package:k11/pages/verify/verify.page.dart';
import 'package:line_icons/line_icons.dart';


import 'package:k11/widgets/status_card.dart';

import 'package:k11/styles/text_styles.dart';

// data
import 'package:k11/data/tests_data.dart' as testData;
import 'package:k11/data/location_data.dart' as locationData;
import 'package:k11/data/vaccination_data.dart' as vaccinationData;


class MyLocationHistoryPage extends StatefulWidget {
  @override
  _MyLocationHistoryPageState createState() => _MyLocationHistoryPageState();
}

class _MyLocationHistoryPageState extends State<MyLocationHistoryPage> {
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
            ...locationData.locations.map((Location location) {
              return Card(
                elevation: 1,
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    location.city,
                  ),
                  trailing: Text(
                    Jiffy(location.when).jms,
                  ),
                  isThreeLine: false,
                ),
              );
            }).toList(),

          ],
        ),
      ),
    );
  }
}