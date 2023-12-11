import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jrzone_app2/page/PrivateHire.dart';
import 'package:jrzone_app2/page/jolloytots_page.dart';
import '../page/activities_page.dart';
import 'faq_page.dart';
import '../page/home_page.dart';
import 'seasonpass.dart';
import './login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Partiespage());
}

class Partiespage extends StatelessWidget {
  static final String title = 'Parties';

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
          //    title: Text(Partiespage.title),
          centerTitle: true,
          actions: [
            Theme(
              data: Theme.of(context).copyWith(),
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
                    value: 3,
                    child: Text('Activites'),
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
          child: Column(children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text(
              'Private Hires',
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 243, 47),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 20),
            Text(
              'JR Zone Birthday Party is a fully hosted 2 hours time slot for you and your children to come with their friends and play at JR Zone.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
          ]),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/Birthday.jpg',
              ),
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
          MaterialPageRoute(builder: (context) => FAQPage()),
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
    }
  }
}
