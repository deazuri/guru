import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:guru/models/prakerin.dart';

class DataPrakerin extends StatelessWidget {
  final Prakerin dataprakerin;

  DataPrakerin(this.dataprakerin);
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
              dataprakerin.perusahaan,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Text(
              dataprakerin.alamat,
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
          'jumlah Siswa ${dataprakerin.jumlah}',
          style: blackTextStyle,
        ),
      ],
    );
  }
}
