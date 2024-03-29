import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLayoutBuilder({Key? key, this.isColor, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraint) {
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraint.constrainWidth()/15).floor(), (index) => SizedBox(
            width: 5, height: 1, child: DecoratedBox(decoration: BoxDecoration(
            color: isColor==null? Colors.white:Colors.grey.shade300,
          )),
          ))
      );
    },

    );
  }
}
