import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/ICCID.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/IMSI.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Unlock.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Shop.dart';

class routes extends StatelessWidget{
  final int index;
  const routes ({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context){
    List<Widget> myList = [
      const home(),
      const iCCID(),
      const unlock(),
      const shop(),
      const iMSI(),
    ];
    return myList[index];
  }
}