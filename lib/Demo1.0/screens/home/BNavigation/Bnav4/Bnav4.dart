import 'package:app_de_prueba/Demo1.0/main.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/page/IMSI.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class Bnav4 extends StatelessWidget {
  static final String title = 'IMSI'
      '  y  '
      'ICCID';
  const Bnav4 ({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return const Center(
  //
  //     child: Text('IMSI/ICCID'),
  //   );
  // }
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.red),
    home: MainPage(),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(

    title: Bnav4.title,
    tabs: [
      Tab(icon: Icon(Icons.select_all), text: 'IMSI'),
      Tab(icon: Icon(Icons.file_open), text: 'ICCID'),

    ],
    children: [
      SortablePage(),
      Container(),

    ],
  );
}