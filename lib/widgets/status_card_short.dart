import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:k11/styles/text_styles.dart' as textStyles;

class StatusCardShortWidget extends StatelessWidget {
  final bool isNegative;

  StatusCardShortWidget({
    @required this.isNegative,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isNegative ? Colors.green : Colors.yellow[600];
    LinearGradient gradient = isNegative ? LinearGradient(
      colors: [
        Colors.green,
        Colors.blue,
      ],
    ) : LinearGradient(
      colors: [
        Colors.yellow[600],
        Colors.blue,
      ],
    );

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: gradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // title
                Text(
                  'OK',
                  style: textStyles.btitle3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800
                  ),
                ),

                // icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.done, 
                      color: iconColor,
                      size: 24,
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 12),

            // text
            Text(
              'Social Distance and Keep Safe',
              style: textStyles.text3.copyWith(
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}