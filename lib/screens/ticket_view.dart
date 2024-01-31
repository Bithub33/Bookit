import 'dart:ffi';

import 'package:bookit/utils/app_layout.dart';
import 'package:bookit/utils/app_styles.dart';
import 'package:bookit/widgets/circular_dot.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

import '../widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?160:169),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            first side of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],
                          style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):
                          Styles.headLineStyle3),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2.5, color: isColor==null? Colors.white: Color(0xFF8ACCF7))
                        ),
                      ),
                      Expanded(child: SizedBox(
                        height: 24,
                        child: LayoutBuilder(

                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max ,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                width: 5, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                color: isColor==null? Colors.white: Colors.grey.shade300,
                              )),
                              ))
                          );  },
                        ),
                      )),
                      Transform.rotate(angle: 1.55,
                          child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white:Color(0xFF8ACCF7))),
                      Expanded(child: SizedBox(
                        height: 24,
                        child: LayoutBuilder(

                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width: 5, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                  color: isColor==null? Colors.white: Colors.grey.shade300,
                                )),
                                ))
                            );  },
                        ),
                      )),
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2.5, color: isColor==null? Colors.white: Color(0xFF8ACCF7))
                        ),
                      ),
                      const Spacer(),
                      Text(ticket["to"]["code"], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):
                      Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket["from"]["name"], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):
                          Styles.headLineStyle4,
                      )),
                      Text(ticket["flying_time"], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white)
                          :Styles.headLineStyle4),

                      SizedBox(
                          width: 100,
                          child: Text(ticket["to"]["name"],textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4)),
                    ],
                  )
                ],
              ),
            ),
            /*
            second side of the card/ticket
            */
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.grey.shade200:Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                  const Expanded(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppLayoutBuilder(sections: 15),
                  )
                  ),
                   SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.grey.shade200:Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),

            ),
            /*
            Third side of the ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? const Color(0xFFF37B67):Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0)),
              ),
              padding: const EdgeInsets.only(right: 16, top: 10, left: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket["date"], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):
                      Styles.headLineStyle3),
                      const Gap(3),
                      Text("Date", style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):
                      Styles.headLineStyle4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(ticket["departure_time"], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):
                      Styles.headLineStyle3),
                      const Gap(3),
                      Text("Departure time", style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):
                      Styles.headLineStyle4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(ticket["number"], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):
                      Styles.headLineStyle3),
                      const Gap(3),
                      Text("Number", style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):
                      Styles.headLineStyle4),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
