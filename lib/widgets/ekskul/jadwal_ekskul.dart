import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:guru/models/ekskul.dart';

class JadwalEkskulCard extends StatelessWidget {
  final Ekskul ekskul;

  JadwalEkskulCard(this.ekskul);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ekskul.hari,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
        Spacer(),
        Text(
          ekskul.ekskul,
          style: regularTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
