import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(

          backgroundColor: Colors.blueGrey.shade900,
          leading: Builder(

            builder: (BuildContext context) {

              return IconButton(
                color: Colors.black,
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,


              );
            },
          ),

          // Este codigo es de un boton de entrada y de retornar
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

          title: const Text(
              'Test App',
            maxLines: 1,
          ),

          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              tooltip:'Account',
             color: Colors.black,
             onPressed: (){
                // ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('T')));
              },
            ),
          ],

        ),

        body: 
        const Center(
          child: Image(
              image: AssetImage('Images/high.png'),
          //     image: NetworkImage('https://th.bing.com/th/id/R.35671f238b8a4a253df095a46853fa30?rik=ZSsg%2f4YZzq0F7A&pid=ImgRaw&r=0') ,
          ),

        ),
        // Image (),
        // const Center(
        //   child: Text(
        //     'Introduction',
        //     style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic),
        //   ),
        // ),
      ),
    ),
  );
}