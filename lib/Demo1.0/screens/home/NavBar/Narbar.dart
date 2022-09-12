import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
                 UserAccountsDrawerHeader(

                     accountName: const Text('Joel Concepcion'),
                     accountEmail: const Text('joencolo1410@gmail.com'),
                   currentAccountPicture: CircleAvatar(
                     child: ClipOval(
                       child: Image.network(
                           'https://cdn.imgbin.com/7/24/15/imgbin-death-computer-icons-symbol-avatar-bones-XrTDy5k17YQXLwJwnFisRdTGE.jpg',
                         width: 90,
                         height: 90,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/R.93b95738cb630f899bacf7dd835b5ad5?rik=%2b5zCEyYOztKvhw&riu=http%3a%2f%2fwscreenwallpapers.com%2fwp-content%2fuploads%2f2015%2f05%2f4k-Wallpapers-6.jpg&ehk=AugAS8it8ApqBh6w0dLdGuvdHVUeBr8dyGR3uzZriFM%3d&risl=&pid=ImgRaw&r=0'
                          ),
                        fit: BoxFit.cover,
                      ),
                    ),
         ),

        ListTile(
          leading: const Icon(Icons.mail),
          title: const Text('Mail'),
          onTap: () {},
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: const Center(
                    child: Text(
                        '8',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                    ),
                  ),
                ),
              ),
              // print('Fav'),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.call_sharp),
          title: const Text('Contact us'),
          // onTap: () => null,
          onTap: (){},
          // print('Fav'),
        ),
        const Divider(),
        // ListTile(
        //   leading: Icon(Icons.t),
        //   title: Text('Favorite'),
        //   onTap: () => null,
        //   // print('Fav'),
        // ),
       ],
      ),
    );
  }
}

