import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:guru/models/jam_presensi.dart';

class JamPresensiCard extends StatelessWidget {
  final JamPresensi jamPresensi;

  JamPresensiCard(this.jamPresensi);
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
              jamPresensi.presensi,
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
          jamPresensi.jam,
          style: regularTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
