// import 'package:app_de_prueba/Demo/constans.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:app_de_prueba/Demo1.0/main.dart';
// import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/Bnav4.dart';
// import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/page/IMSI.dart';
// import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/widget/tabbar_widget.dart';
// import 'package:flutter/services.dart';
//
//
//
// class search_B extends StatelessWidget {
//   // const search_B ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(
//
//       children: <Widget>[
//         Container(
//           height: size.height * 0.24,
//           child: Stack(
//             children: <Widget> [
//               Container(
//                 height: size.height * 0.2 -27,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(36),
//                     bottomRight: Radius.circular(36),
//                   )
//                 ),
//                 child:Tabs(context),
//
//               ),
//               Positioned(
//                 bottom: 0,
//                 left: 0,
//                 right: 0,
//                 child: Container(
//                   alignment: Alignment.center,
//                   margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   height: 54,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                          offset: const Offset(0,10),
//                          blurRadius: 50,
//                          color: kPrimaryColor2.withOpacity(0.23)
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     children: <Widget> [
//                       Expanded(
//                         child: TextField(
//                           onChanged: (value) {},
//                           decoration: InputDecoration(
//                             hintText: "Search",
//                             hintStyle: TextStyle(
//                               color: kPrimaryColor2.withOpacity(0.5),
//                             ),
//                             enabledBorder: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       SvgPicture.asset('assets/icons/search.svg')
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//   // @override
//   // Widget tabs(BuildContext context)
//   // {
//   //   return Tabs();
//   // }
// }
//
// class Tabs extends StatefulWidget {
//   Tabs(BuildContext context);
//
//   @override
//   _Tabs createState() => _Tabs();
// }
// class _Tabs extends State<Tabs>{
//   @override
//   Widget build(BuildContext context) => TabBarWidget(
//
//     title: Bnav4.title,
//
//     tabs: [
//       Tab(icon: Icon(Icons.select_all), text: 'IMSI'),
//       Tab(icon: Icon(Icons.file_open), text: 'ICCID'),
//
//     ],
//     children: [
//       SortablePage(),
//       Container(),
//
//     ],
//   );
// }
//
