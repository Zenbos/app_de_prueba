import 'package:app_de_prueba/Table/page/sortable_page.dart';
import 'package:app_de_prueba/Table/widget/tabbar_widget.dart';
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

class MyApp extends StatelessWidget {
  static final String title = 'Data Table';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
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
        title: MyApp.title,
        tabs: [
          Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sortable'),
          Tab(icon: Icon(Icons.select_all), text: 'Selectable'),
          Tab(icon: Icon(Icons.edit), text: 'Editable'),
        ],
        children: [
          SortablePage(),
          Container(),
          Container(),
        ],
      );
}
