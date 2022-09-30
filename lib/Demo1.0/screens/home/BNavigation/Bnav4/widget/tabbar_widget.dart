import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../Demo/constans.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final List<Tab> tabs;
  final Icon icon;
  final List<Widget> children;

  const TabBarWidget({
    Key? key,
    required this.title,
    required this.tabs,
    required this.children, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(

        length: tabs.length,

        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            toolbarHeight: 75,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black54,Colors.transparent, Colors.black54],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Column(

                children: <Widget> [

                  Container(

                    height:  135,
                    decoration: const BoxDecoration(

                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),
                        )
                    ),

                    // child: MainPage(),


                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,

                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 50,
                              color: kPrimaryColor2.withOpacity(0.23)
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget> [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: kPrimaryColor2.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SvgPicture.asset('assets/icons/search.svg')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottom: TabBar(

              padding: EdgeInsets.only(bottom: 47,top: 2),
              isScrollable: true,
              indicatorColor: Colors.redAccent,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: tabs,
            ),

            elevation: 20,
            titleSpacing: 0,
          ),
          body: TabBarView(children: children),
        ),
      );
}
