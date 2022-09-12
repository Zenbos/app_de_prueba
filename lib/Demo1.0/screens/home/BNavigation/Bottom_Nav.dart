import 'package:app_de_prueba/Demo1.0/constantes.dart';
import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget{
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BNavigatorState createState () {
    return _BNavigatorState();
  }
  //State<BNavigator> createState() { _BNavigatorState();}
  // State<BNavigator> createState() =>  _BNavigatorState();

}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build (BuildContext context){
    return BottomNavigationBar(
      currentIndex: index,
        onTap: (int i){
        setState((){
        index = i;
        widget.currentIndex(i);
        });
      },
        backgroundColor: kBotNavColor,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF9D0101),
        iconSize: 25.0,
        selectedIconTheme: const IconThemeData(size: 35),
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',

          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.ondemand_video,),
           label: 'Tutorials'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_open,),
            label: 'Unlock'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_iphone, ),
              label: 'IMSI/ICCID'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop,),
              label: 'Shop'

          ),
        ]
    );
  }
}