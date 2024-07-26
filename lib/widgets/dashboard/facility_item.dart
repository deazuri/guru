import 'package:flutter/material.dart';
import 'package:guru/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  FacilityItem({required this.name, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              imageUrl,
              width: 68,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '  $name',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
