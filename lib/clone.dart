import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.red,
        appBar: AppBar(

          backgroundColor: Colors.red.shade900,
          leading: Builder(

            builder: (BuildContext context) {

              return IconButton(
                color: Colors.white,
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,


              );
            },
          ),

          /// Este codigo es de un boton de entrada y de retornar
          // IconButton(
          //    icon: const Icon(Icons.navigate_next),
          //    tooltip: 'Go to the next page',
          //    onPressed: () {
          //      Navigator.push(context, MaterialPageRoute<void>(
          //        builder: (BuildContext context) {
          //          return Scaffold(
          //            appBar: AppBar(
          //              title: const Text('Next page'),
          //            ),
          //            body: const Center(
          //              child: Text(
          //                'This is the next page',
          //                style: TextStyle(fontSize: 24),
          //              ),
          //            ),
          //          );
          //        },
          //      ));
          //    },
          //  ),

          title: const Text('Test App'),

          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              tooltip:'Account',

              onPressed: (){
                // ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('T')));
              },
            ),
          ],

        ),
        body: const Center(
          child: Text(
            'Introduction',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ),
  );
}