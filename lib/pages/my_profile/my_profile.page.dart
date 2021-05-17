import 'package:flutter/material.dart';

import 'package:k11/styles/text_styles.dart';
import 'package:k11/widgets/status_card_short.dart';


class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile'
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit), 
            onPressed: (){},
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 56),

            // avatar
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.blue,
              ),
            ),

            SizedBox(height: 16),

            // name
            Center(
              child: Text(
                'Lisa Nkosi',
                style: title3,
              ),
            ),

            // k11 ID
            Center(
              child: Text(
                'XlSlfrijae#',
                style: title5,
              ),
            ),

            SizedBox(height: 16),

            // phone
            Card(
              elevation: 1,
              child:ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  '+0100200200',
                ),
                dense: true,
                isThreeLine: false,
              ),
            ),

            // email
            Card(
              elevation: 1,
              child:ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'lisankosi@mail.com',
                ),
                dense: true,
                isThreeLine: false,
              ),
            ),

            Spacer(),

            StatusCardShortWidget(isNegative: true),

            Spacer(),

            // since
            Center(
              child: Text(
                'Since Jan 12',
                style: text3.copyWith(
                  color: Colors.grey[800],
                ),
              ),
            ),

            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}