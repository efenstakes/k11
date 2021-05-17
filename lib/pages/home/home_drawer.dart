import 'package:flutter/material.dart';


import 'package:k11/styles/text_styles.dart';
import 'package:k11/styles/colors.dart' as appColors;
import 'package:line_icons/line_icons.dart';

class HomeDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        // color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // header
            DrawerHeader(
              child: Container(
                child: Row(
                  children: [

                    CircleAvatar(
                      radius: 32,
                      child: Icon(Icons.person_outline_rounded),
                    ),

                    SizedBox(width: 8),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: Text(
                            'Lisa Nkosi',
                            style: text3.copyWith(
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        
                        Center(
                          child: Text(
                            'Active',
                            style: text4.copyWith(
                              color: Colors.grey[800],
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            // test history
            ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text(
                'Test History'
              ),
              onTap: () {},
              isThreeLine: false,
            ),

            SizedBox(height: 10),
            
            // location
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text(
                'Location History'
              ),
              onTap: () {},
              isThreeLine: false,
            ),

            SizedBox(height: 10),

            // vaccinations
            ListTile(
              leading: Icon(LineIcons.hospital),
              title: Text(
                'Vaccinations'
              ),
              onTap: () {},
              isThreeLine: false,
            ),

            SizedBox(height: 10),

            // profile
            ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text(
                'My Profile'
              ),
              onTap: () {},
              isThreeLine: false,
            ),

            SizedBox(height: 10),

            // about
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'About K11'
              ),
              onTap: () {},
              isThreeLine: false,
            ),

            Spacer(),

            // log out
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Log Out'
                ),
              ),
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}