import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:guru/models/jadwal.dart';

class JadwalCard extends StatelessWidget {
  final Jadwal jadwal;

  JadwalCard(this.jadwal);
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
              jadwal.mapel,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Text(
              jadwal.kelas,
              style: regularTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
        Spacer(),
        Text(
          'Jam ke ${jadwal.jam}',
          style: blackTextStyle,
        ),
      ],
    );
  }
}
