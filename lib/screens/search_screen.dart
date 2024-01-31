import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bookit/utils/app_layout.dart';

import '../utils/app_styles.dart';
import '../widgets/app_double_text_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs.dart';
import 'flight_screen.dart';

class  SearchScreen extends StatelessWidget {
  const SearchScreen ({Key? key}) : super(key: key);

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
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith
            (fontSize: AppLayout.getHeight(35))),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(40)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12),
            vertical: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              color: const Color(0xD9113DCE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            )
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all",),
          Gap(AppLayout.getHeight(20)),
          const FlightScreen()

        ],
      ),
    );
  }
}
