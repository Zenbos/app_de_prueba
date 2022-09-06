
import 'package:app_de_prueba/Demo1.0/constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }
enum Menu1 {Account, home, Shop, UnlockService}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen ({super.key});
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
//
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(),
//   //     body: const cuerpo(),
//   //     // body: const Body(),
//   //   );
//   // }
//
//   AppBar buildAppBar() {
//     return AppBar(
//       // backgroundColor: kPrimaryColor2,
//       // elevation: 3,
//       // leadingWidth: 100,
//
//       // leading: Row(
//       //   children: <Widget>[
//       //     IconButton(
//       //       icon: SvgPicture.asset("assets/icons/menu-burger.svg"),
//       //       onPressed: () {
//       //
//       //       },
//       //     ),
//       //     // Image.asset("Images/TurbosimExpress_Logo(2).jpg")
//       //   ],
//       // ),
//       // title: const Text('main page'),
//       // actions: <Widget>[
//       //   IconButton(
//       //       icon: const Icon(Icons.account_circle),
//       //       tooltip: 'Login',
//       //       onPressed: (){
//       //
//       //       },
//       //   ),
//       //   // IconButton(
//       //   //     onPressed: onPressed,
//       //   //     icon: icon)
//       // ],
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 3,
        leading: PopupMenuButton(

          onSelected: (Menu1 item) {

            setState(() {
              _selectedMenu = item.name;
            });
          },
          // Icono del Navbar en el leading
          child: const Icon(CupertinoIcons.line_horizontal_3),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu1>> [
            const PopupMenuItem<Menu1>(
              value: Menu1.Account,
              child: Text('Account'),
            ),
            const PopupMenuItem<Menu1>(
              value: Menu1.home,
              child: Text('Home'),
            ),
            const PopupMenuItem<Menu1>(
              value: Menu1.Shop,
              child: Text('Shop'),
            ),
            const PopupMenuItem<Menu1>(
              value: Menu1.UnlockService,
              child: Text('Unlock Service'),
            ),



         ],
        ),


          title: const Text('hi world'),
        actions: <Widget>[
          // This button presents popup menu items.

          PopupMenuButton<Menu>(
            // Callback that sets the selected popup menu item.
              onSelected: (Menu item) {

                setState(() {
                  _selectedMenu = item.name;
                });
              },

              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                const PopupMenuItem<Menu>(
                  value: Menu.itemOne,
                  child: Text('Item 1'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemTwo,
                  child: Text('Item 2'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemThree,
                  child: Text('Item 3'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemFour,
                  child: Text('Item 4'),
                ),
              ]),
        ],
      ),
      body: Center(
        child: Text('selectedMenu: $_selectedMenu'),

      ),
    );
  }
}

