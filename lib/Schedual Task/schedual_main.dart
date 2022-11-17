import 'package:edu_tools/screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'notificationservice.dart';

void main() {

  // to ensure all the widgets are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // to initialize the notificationservice.
  NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Schedual ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'EduTools'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController Notification_title = TextEditingController();
  TextEditingController Notification_descrp = TextEditingController();

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => main_screen()));
        }, icon: Icon(Icons.arrow_back,size: 30,),

        ),
        elevation: 0,
        title: Text('EDUTOOLS'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("EduTools"),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: Notification_title,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Title",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: Notification_descrp,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Description",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  NotificationService().showNotification(
                      1, Notification_title.text, Notification_descrp.text);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Show Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}