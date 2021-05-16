import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusCardWidget extends StatelessWidget {
  final bool isSuccessful;

  StatusCardWidget({
    @required this.isSuccessful,
  });

  @override
  Widget build(BuildContext context) {
    Color color = isSuccessful ? Colors.red : Colors.green;

    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12, horizontal: 12,
        ),
        child: Column(
          children: [

            // icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.done, color: color,),
              ),
            ),

            SizedBox(height: 16),

            // title
            Text(
              'OK',
              style: GoogleFonts.karla(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16),

            // text
            Text(
              'Social Distance and Keep Safe',
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

          ],
        ),
      ),
    );
  }
}