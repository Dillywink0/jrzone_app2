import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

@override
Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Season Pass',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: seasonpass(),
    );

class seasonpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // title: Text(seasonpass),
          centerTitle: true,
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                  //  dividerColor: Color.fromARGB(255, 34, 244, 255),
                  //  iconTheme:
                  //      IconThemeData(color: Color.fromARGB(255, 102, 72, 252)),
                  //  textTheme: TextTheme()
                  //      .apply(bodyColor: Color.fromARGB(255, 109, 30, 200)),
                  ),
              child: PopupMenuButton<int>(
                color: Colors.indigo,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 4,
                    child: Text('Home'),
                  ),
                  PopupMenuItem<int>(
                    value: 5,
                    child: Text('FAQ'),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text('Season Pass'),
                  ),
                  PopupMenuItem<int>(
                    value: 3,
                    child: Text('Activites'),
                  ),
                  PopupMenuItem<int>(
                    value: 3,
                    child: Text('Contract US'),
                  ),
                  PopupMenuItem<int>(
                    value: 6,
                    child: Text('Parties'),
                  ),
                  PopupMenuItem<int>(
                    value: 3,
                    child: Text('Private Hire'),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        const SizedBox(width: 8),
                        Text('Sign Out'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                //    Text(
                //      'Season Passes',
                //      style: TextStyle(
                //         color: Color.fromARGB(255, 25, 249, 43),
                //         fontSize: 50,
                //         fontWeight: FontWeight.bold),
                //   ),
                SizedBox(
                  height: 20,
                ),
                Text(''),
                Container()
              ]),
          //  alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://jrzone.co.uk/wp-content/uploads/Winter-season-pass-800x800-opt.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  void onSelected(BuildContext context, int item) {
    switch (item) {}
  }
}
