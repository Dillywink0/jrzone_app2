import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jrzone_app2/page/jolloytots_page.dart';
import 'package:jrzone_app2/page/settings_page.dart';
import '../page/activities_page.dart';
import 'faq_page.dart';
import 'parties_page.dart';
import 'seasonpass.dart';
import './login_page.dart';
import '../page/PrivateHire.dart';
import '../Components/HomeButtons.dart';
import 'info.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'JRZone';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        //  title: 'JRZone',
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: MainPage(),
      );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          //     title: Text(MyApp.title),
          centerTitle: true,
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                //  dividerColor: Color.fromARGB(255, 34, 244, 255),
                iconTheme:
                    IconThemeData(color: Color.fromARGB(255, 102, 72, 252)),
                textTheme: TextTheme()
                    .apply(bodyColor: Color.fromARGB(255, 109, 30, 200)),
              ),
              child: PopupMenuButton<int>(
                color: Colors.indigo,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text('Home'),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text('FAQ'),
                  ),
                  PopupMenuItem<int>(
                    value: 4,
                    child: Text('Season Passes'),
                  ),
                  PopupMenuItem<int>(
                    value: 5,
                    child: Text('Parties'),
                  ),
                  PopupMenuItem<int>(
                    value: 6,
                    child: Text('Private Hire'),
                  ),
                  PopupMenuItem<int>(
                    value: 7,
                    child: Text('Jolly Tots'),
                  ),
                  PopupMenuItem<int>(
                    value: 8,
                    child: Text('Settings'),
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
              //   crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  'JR Zone',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 243, 47),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.all(40),
                    child: Column(
                      children: [Buttons()],
                    ))
              ]),
          //      padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.whingewhingewine.co.uk/wp-content/uploads/2016/12/Depositphotos_43703091_xl-2015.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MyApp()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FaqScreen()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false,
        );
      case 3:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => ActivitiesPage()),
          (route) => false,
        );
      case 4:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => seasonpass()),
          (route) => false,
        );
      case 5:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Partiespage()),
          (route) => false,
        );
      case 6:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => PrivateHires()),
          (route) => false,
        );
      case 7:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => JollyTotsPage()),
          (route) => false,
        );
      case 8:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => SettingsPage()),
          (route) => false,
        );
    }
  }
}
