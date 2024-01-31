import 'package:bookit/screens/ticket_view.dart';
import 'package:bookit/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/circular_dot.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Container(
      //width: size.width*44,
      //height: AppLayout.getHeight(400),
      /*decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.grey.shade200,
            )
          ]
      )*/
      padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
      child: TicketView(ticket: ticketList[0], isColor: true),
    );
  }
}
