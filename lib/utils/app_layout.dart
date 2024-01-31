import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static screenHeight()
  {
    return Get.height;
  }
  static screenWidth()
  {
    return Get.width;
  }
  static getHeight(double pixels)
  {
    double x = screenHeight()/pixels;
    return screenHeight()/x;
  }
  static getWidth(double pixels)
  {
    double x = screenWidth()/pixels;
    return screenWidth()/x;
  }
}