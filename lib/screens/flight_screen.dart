import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: AppLayout.getHeight(425),
          width: size.width*.42,
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(15)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1
            )
            ]
          ),
          child: Column(
            children: [
              Container(
                height: AppLayout.getHeight(190),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/sit.jpg"
                    ),
                  )
                ),
              ),
              Gap(AppLayout.getHeight(12)),
              Text("20% discount on business class tickets form Airline on international"
              ,style: Styles.headLineStyle2)
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getWidth(15)),
                  width: size.width*0.44,
                  height: AppLayout.getHeight(200),
                  decoration: BoxDecoration(
                      color: const Color(0xFF3ABBBB),
                      borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey", style: Styles.headLineStyle2.
                      copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                      Gap(AppLayout.getHeight(10)),
                      Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.
                      copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF189999)),
                      color: Colors.transparent
                  ),
                ),)
              ],
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              width: size.width*0.44,
              height: AppLayout.getHeight(210),
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: const Color(0xFFEC6545)
              ),
              child: Column(
                children: [
                  Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white,
                      fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                  Gap(AppLayout.getHeight(15)),
                  RichText(text:
                  const TextSpan(
                    children: [
                      TextSpan(
                        text: "",
                        style: TextStyle(fontSize: 38)
                      ),
                      TextSpan(
                          text: "",
                          style: TextStyle(fontSize: 50)
                      ),
                      TextSpan(
                          text: "",
                          style: TextStyle(fontSize: 38)
                      ),
                    ]
                  ))
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
