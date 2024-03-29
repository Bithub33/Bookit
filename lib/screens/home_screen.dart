import 'package:bookit/screens/ticket_view.dart';
import 'package:bookit/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import 'hotel_view.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Good morning", style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Tickets", style: Styles.headLineStyle1
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/img_1.png"
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6F0)
                  ),
                  child: Row(
                    children: const [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        "Search"
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming flights", style: Styles.headLineStyle2),
                    InkWell(
                      onTap: (){

                      },
                        child: Text(
                            "View all", style: Styles.textStyle.copyWith(color: Styles.colorPrimary))),
                  ],
                ),
                const Gap(20),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticket: ticket)).toList()
            ),
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2),
                InkWell(
                    onTap: (){

                    },
                    child: Text(
                        "View all", style: Styles.textStyle.copyWith(color: Styles.colorPrimary))),
              ],
            ),
          ),
          const Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((hotel) => HotelView(hotel: hotel)).toList()
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
