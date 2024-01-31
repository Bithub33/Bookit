import 'package:bookit/utils/app_layout.dart';
import 'package:bookit/widgets/layout_builder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/img_1.png"
                        ),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Book Tickets", style: Styles.headLineStyle1
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                      "New York", style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w500, color: Colors.grey.shade500)
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5),
                    vertical: AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF4F3),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100))
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3),
                          vertical: AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                          color: Color(0xFF526799),
                          shape: BoxShape.circle
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white, size: 15),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        const Text("Premium status", style: TextStyle(
                          fontWeight: FontWeight.w600, color: Color(0xFF526799)
                        ))
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.colorPrimary,
                        fontWeight: FontWeight.w300)),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.colorPrimary,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),

                ),
              ),
              Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: Color(0xFF264CD2)),
                        color: Colors.transparent
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(18),
                vertical: AppLayout.getWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.colorPrimary, size: 27),
                    ),
                    Gap(AppLayout.getWidth(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("You\'ve got a new award", style: Styles.headLineStyle2.
                        copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        //Gap(AppLayout.getHeight(10)),
                        Text("You have 150 flights in a year", style: Styles.headLineStyle2.
                        copyWith(fontWeight: FontWeight.w500, color:
                        Colors.white.withOpacity(0.9), fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            child: Column(
              children: [
                Text("198602", style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
                )),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    Text("23 May 2023", style: Styles.headLineStyle4,)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(fistText: "23 042", secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(fistText: "Airline CO", secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(sections: 16, isColor: true),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(fistText: "24", secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(fistText: "McDonald's", secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(sections: 16, isColor: true),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(fistText: "52 356", secondText: "Miles",
                        alignment: CrossAxisAlignment.start),
                    ColumnLayout(fistText: "Exuma", secondText: "Received from",
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(30)),
                InkWell(
                  onTap: (){
                    print("You got tapped");
                  },
                  child: Text("How to get more miles", style: Styles.textStyle.copyWith(
                    color: Styles.colorPrimary, fontWeight: FontWeight.w500
                  ),),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
