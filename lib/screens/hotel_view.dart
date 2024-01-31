import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.colorPrimary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //margin: const EdgeInsets.only(right: 16),
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/${hotel["image"]}"
                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
          const Gap(10),
          Text(hotel["place"], style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text(hotel["destination"], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(20),
          Text('\$${hotel["price"]}/night', style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),

    );
  }
}
