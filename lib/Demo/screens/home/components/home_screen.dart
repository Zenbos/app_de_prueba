
import 'package:app_de_prueba/Demo/constans.dart';
import 'package:app_de_prueba/Demo/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor2,
      elevation: 3,
      leading: Row(
        children: <Widget>[IconButton(
          icon: SvgPicture.asset("assets/icons/menu-burger.svg"),
          onPressed: () {},
         ),
          Image.asset("Images/TurbosimExpress_Logo(2).jpg")
        ],
      ),
    );
  }
}