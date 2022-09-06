import 'package:app_de_prueba/Demo/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
    Container(
          //it will cover 20% of our total height
          height: size.height * 0.245,
          child: Stack(
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: 36 + kDefaultPadding
                ),
               height: size.height * 0.2 -27,
                decoration: const BoxDecoration(color: kPrimaryColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft:  Radius.circular(36),
                  bottomRight: Radius.circular(36),

                  // los de arriba' topRight: Radius.circular(36) '
                  ),
                ),
                child: Row(
                  children: <Widget>[
                  Positioned(
                      bottom: 70,
                      left: 0,
                      right: 0,
                   child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric( horizontal: kDefaultPadding) ,
                    padding: const EdgeInsets.symmetric( horizontal: kDefaultPadding) ,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                        offset: const Offset(0,10),
                          blurRadius: 50,
                          color: kPrimaryColor2.withOpacity(0.23)
                      ),
                      ],
                    ),
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextField(
                              // onChanged:  (){},
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    color: kPrimaryColor3.withOpacity(0.5)
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                ),
                              ),
                          ),
                          SvgPicture.asset("assets/icons/search.svg")
                        ],
                      ),
                   ),
                ),
                ],
          ),
        ),
      ],
          ),

    ),

      ],


    );

  }
}
