import 'package:bookit/screens/ticket_view.dart';
import 'package:bookit/screens/ticket_view_detail.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/circular_dot.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              const TicketDetail(),
              const SizedBox(height: 1,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),
                    vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(fistText: "Flutter DB", secondText: "Passenger",
                          alignment: CrossAxisAlignment.start),
                        ColumnLayout(fistText: "5221 364869", secondText: "Passport",
                        alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(sections: 15, isColor: true),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(fistText: "0554 4417 6985", secondText: "Ticket",
                            alignment: CrossAxisAlignment.start),
                        ColumnLayout(fistText: "B2C65D", secondText: "Booking code",
                            alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(sections: 15, isColor: true),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png", scale: 11,
                                ),
                                Text(" **** 2465", style: Styles.headLineStyle3),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Payment method", style: Styles.headLineStyle4,)
                          ],
                        ),
                        const ColumnLayout(fistText: "\$245.00",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Gap(AppLayout.getHeight(20)),
                          /*
                    bar_code section
                     */
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/martinovovo',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                        
                      ),
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0],),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(25),
            top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
          )),
          Positioned(
              right: AppLayout.getWidth(25),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ))

        ],
      )
    );
  }
}
