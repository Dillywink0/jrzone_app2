import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../page/activities_page.dart';
import 'faq_page.dart';
import '../page/home_page.dart';
import 'seasonpass.dart';
import './login_page.dart';
import './PrivateHire.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(LazerStormPage());
}

class LazerStormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // title: Text(JollyTotsPage.),
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
                    value: 5,
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
          child: Column(children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text(
              'Lazer Storm',
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 243, 47),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 16),
            Text(
              'JR Zone’s Laser Storm parties are suitable for children and adults from 6 years upwards in groups of 10 or more.',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 17,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Each session is 2 hours long Only the booked number of players can join in. ‘Non-Players’ cannot play!',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 17,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            )
          ]),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/lazerstorm.jpg',
              ),
              fit: BoxFit.fitHeight,
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
          MaterialPageRoute(builder: (context) => PrivateHires()),
          (route) => false,
        );
    }
  }
}
