import 'package:flutter/material.dart';

import 'package:k11/styles/text_styles.dart';


class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [

            SizedBox(height: 56),
            
            Center(
              child: Text(
                'Verify your Status',
                style: title2,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Point your camera to a scanning device to verify your covid status',
              style: text3,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            Card(
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 40),
            
            Text(
              'Waiting for verification',
              style: text2,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),


          ],
        ),
      ),
    );
  }
}