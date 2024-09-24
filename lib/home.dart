import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color.fromARGB(255, 118, 94, 184),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Isha',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 100,
              height: 30,
              child: const Center(
                child: Text(
                  'Current prayer',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 118, 94, 184),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_today, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'August 25, 2024',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: const [
                    Icon(Icons.access_time, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'Safar 27, 1445', //
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.supervised_user_circle_outlined,
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.language,
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              title: const Text(
                'Language',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              title: const Text(
                'Setting',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_mail,
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              title: const Text(
                'Contact us',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
                color: Color.fromARGB(255, 118, 94, 184),
              ),
              title: const Text(
                'Signout',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 94, 184),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(10.0),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Today Tasbih',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Top Recitation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text('Welcome to the Home Page!'),
            ),
          ),
        ],
      ),
    );
  }
}
