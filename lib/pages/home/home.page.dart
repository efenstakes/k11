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


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'K11'
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined), 
            onPressed: _goToMyProfile,
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [

            SizedBox(height: 56),

            // status card
            StatusCardWidget(
              isNegative: false,
            ),

            SizedBox(height: 56),

            // latest tests
            Text(
              'Tests in Last 1 month',
              style: title5,
            ),
            SizedBox(height: 20),

            // latest tests
            ...testData.tests.map((Test test) {
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
            }).toList(),


            SizedBox(height: 40),


            // latest locations
            Text(
              'Location History',
              style: title5,
            ),
            SizedBox(height: 20),

            // latest locations
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
                  dense: true,
                  isThreeLine: false,
                ),
              );
            }).toList(),
            
            SizedBox(height: 40),

            // latest vaccinations
            Text(
              'Vaccinations',
              style: title5,
            ),
            SizedBox(height: 20),

            // latest vaccinations
            Card(
              elevation: 1,
              child:ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text(
                  Jiffy(vaccinationData.vaccinations[0].doneOn).jms,
                ),
                dense: true,
                isThreeLine: false,
              ),
            ),

            SizedBox(height: 40),

          ],
        ),
      ),
      
      drawer: HomeDrawerWidget(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToVerifyStatus, 
        label: Text(
          'Verify Status',
        ),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }// build


  void _goToMyProfile () {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (BuildContext ctx)=> MyProfilePage()
      ),
    );
  }// _goToMyProfile

  void _goToVerifyStatus() {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (BuildContext ctx)=> VerifyPage()
      ),
    );
  }// _goToVerifyStatus
}