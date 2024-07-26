import 'package:flutter/material.dart';
import 'package:guru/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  FacilityItem({required this.name, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 60,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '  $name',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
