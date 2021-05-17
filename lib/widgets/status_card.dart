import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:k11/styles/text_styles.dart' as textStyles;

class StatusCardWidget extends StatelessWidget {
  final bool isNegative;

  StatusCardWidget({
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
        padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: gradient,
        ),
        child: Column(
          children: [

            // icon
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.done, 
                  color: iconColor,
                  size: 28,
                ),
              ),
            ),

            SizedBox(height: 16),

            // title
            Text(
              'OK',
              style: textStyles.btitle2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800
              ),
            ),

            SizedBox(height: 4),

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