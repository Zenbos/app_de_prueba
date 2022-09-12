import 'package:app_de_prueba/Demo1.0/constantes.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bottom_Nav.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Routes.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/NavBar/Narbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum Menu { itemOne, itemTwo, itemThree, itemFour }
enum Menu1 {account, home, shop, unlockservice}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}): super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();

}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // String _selectedMenu = '';
int index = 0;
BNavigator ?myBNB;

@override
  void initState() {
    myBNB = BNavigator(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Navbar(),
      appBar: AppBar(
        // automaticallyImplyLeading: false, @cada que pases a otro menu que no sea home aplicar esto
        backgroundColor: kPrimaryColor2,
        elevation: 3,
        // leading: PopupMenuButton(
        //
        //   onSelected: (Menu1 item) {
        //
        //     setState(() {
        //       // _selectedMenu = item.name;
        //
        //     });
        //   },
        //   // Icon del Navbar en el leading
        //   child: Image.asset('assets/icons/icons8-menu-50.png', color: Colors.black,scale: 1.99,),
        //   itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu1>> [
        //     const PopupMenuItem<Menu1>(
        //
        //       value: Menu1.account,
        //       textStyle: TextStyle(fontSize: 20,
        //         fontStyle: FontStyle.normal,
        //         color: Colors.black,
        //       fontWeight: FontWeight.w300,
        //       ),
        //       child: Text('Profile',),
        //     ),
        //     const PopupMenuItem<Menu1>(
        //       value: Menu1.home,
        //       child: Text('Home'),
        //     ),
        //     const PopupMenuItem<Menu1>(
        //       value: Menu1.shop,
        //       textStyle: TextStyle(
        //           color: Colors.black
        //       ),
        //       child: Icon(
        //         Icons.account_circle_outlined,
        //         semanticLabel: 'ahhhhhhasdas',
        //         color: Colors.black,
        //         textDirection: TextDirection.ltr,
        //       ),
        //     ),
        //     const PopupMenuItem<Menu1>(
        //       value: Menu1.unlockservice,
        //       child: Text('home'),
        //     ),
        //
        //
        //
        //  ],
        // ),


          title:  Center(
            child: Text(
              'Turbo Sim Express',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
              ),
            ),
          ),
          // Image.asset('Images/TurbosimExpress_Logo(2).jpg',height: 100,width: 135,),
        actions: <Widget>[
          // This button presents popup menu items.

          PopupMenuButton<Menu>(
            // Callback that sets the selected popup menu item.
            //   onSelected: (Menu item) {
            //
            //     setState(() {
            //       // _selectedMenu = item.name;
            //     });
            //   },

              child: const Icon(CupertinoIcons.cart,size: 26),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[

                // const PopupMenuItem<Menu>(
                //   value: Menu.itemOne,
                //   textStyle: TextStyle(fontStyle: FontStyle.italic,
                //       color: Colors.black,
                //     fontWeight: FontWeight.w900,
                //     fontSize: 20,
                //   ),
                //   child: Text('Item 1',textAlign: TextAlign.center,),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemTwo,
                //   child: Text('Item 2'),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemThree,
                //   child: Text('Item 3'),
                // ),
                // const PopupMenuItem<Menu>(
                //   value: Menu.itemFour,
                //   child: Text('Item 4'),
                // ),
              ]),
        ],
      ),
      bottomNavigationBar: myBNB,
      backgroundColor: kBackgroundColor,
      body: routes(

        index: index,
      ),
    );

  }
}

// class _BNavigatorState State<BNavigatorState> {
//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }

