import 'package:flutter/material.dart';

import 'Bnav1/Bnav1.dart';
import 'Bnav2/Bnav2.dart';
import 'Bnav3/Bnav3.dart';
import 'Bnav4/Bnav4.dart';
import 'Bnav5/Bnav5.dart';




class routes extends StatelessWidget{
  final int index;
  const routes ({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context){
    List<Widget> myList = [
      const Bnav1(),
      const Bnav4(),
      const Bnav2(),
      const Bnav3(),
      const Bnav5(),
    ];
    return myList[index];
  }
}