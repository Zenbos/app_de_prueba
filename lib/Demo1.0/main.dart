import 'package:app_de_prueba/Demo1.0/constantes.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // static final String title = 'IMSI';

  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prue-3',
      theme: ThemeData(
        // backgroundColor: kPrimaryColor2,


        textTheme:Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: const MyStatefulWidget(),

    );
  }
}
