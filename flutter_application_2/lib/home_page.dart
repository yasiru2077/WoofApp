import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/articals.dart';
import 'package:flutter_application_2/camara.dart';
import 'package:flutter_application_2/clicker.dart';
import 'package:flutter_application_2/get_user_name.dart';
import 'package:flutter_application_2/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  /*List<String> docIDs = [];

  Future getDecId() async {
    await FirebaseFirestore.instance.collection('users').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);
          }),
        );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
          child: Icon(
            Icons.exit_to_app,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CameraScreen()));
              },
              child: Icon(
                Icons.camera,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.7),
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Icon(
                Icons.home,
                size: 40,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Articals()));
              },
              child: Icon(
                Icons.pets,
                size: 40,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              child: Icon(
                Icons.settings,
                size: 40,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Clicker()));
              },
              child: Icon(
                Icons.speaker,
                size: 40,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/image 21 (3).png',
                alignment: Alignment.topCenter,
                width: 430,
              ),

              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                    child: Icon(Icons.exit_to_app),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.camera),
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome! ' + user.email!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Center(
                child: Text(
                  'BEN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              /*Expanded(
                child: FutureBuilder(
                  future: getDecId(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                      itemCount: docIDs.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: GetUserName(doumentId: docIDs[index]),
                        );
                      },
                    );
                  },
                ),
              )*/
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shield_moon_outlined,
                            size: 28,
                          ),
                          Text('Breed'),
                          SizedBox(
                            width: 40,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.timer_outlined,
                        size: 25,
                      ),
                      Text('Age'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Unknown',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          '2 Years',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 25,
                  ),
                  Text('Gender'),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.height,
                    size: 25,
                  ),
                  Text('Height'),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 117,
                      ),
                      Text(
                        '51 Cm',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.fitness_center,
                        size: 25,
                      ),
                      Text('Weight'),
                      SizedBox(
                        width: 60,
                      ),
                      Icon(
                        Icons.refresh,
                        size: 25,
                      ),
                      Text('Status'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    '25 Kg',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    'Beginner',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
