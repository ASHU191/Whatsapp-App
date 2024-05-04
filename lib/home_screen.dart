import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color.fromARGB(216, 61, 61, 61),
          appBar: AppBar(
            centerTitle: false,
            title: Text('Whatsapp',
                style:
                    TextStyle(color: Colors.white)), // Text color set to white
            backgroundColor: Colors.teal,
            // bottom: const TabBar(
            //   tabs: [
            //     Tab(
            //       child: Icon(Icons.camera_alt, color: Colors.white),
            //     ),
            //     // Icon color set to white
            //     Tab(
            //       child: Text('Chats', style: TextStyle(color: Colors.white)),
            //     ),
            //     Tab(
            //       child: Text('Status', style: TextStyle(color: Colors.white)),
            //     ),
            //     Tab(
            //       child: Text('Calls', style: TextStyle(color: Colors.white)),
            //     ),
            //   ],
            //   indicatorColor: Colors.white,
            // ),
            actions: [
              const Icon(Icons.camera_alt, color: Colors.white),
              const SizedBox(width: 30),
              const Icon(Icons.search, color: Colors.white),
              const SizedBox(width: 10),
              PopupMenuButton(
                  icon:
                      const Icon(Icons.more_vert_outlined, color: Colors.white),
                  itemBuilder: (
                    context,
                  ) =>
                      const [
                        PopupMenuItem(value: '1', child: Text('new group')),
                        PopupMenuItem(value: '2', child: Text('setting')),
                        PopupMenuItem(value: '3', child: Text('New Brodcast ')),
                        PopupMenuItem(value: '3', child: Text('Linked ')),
                      ]),
              const SizedBox(width: 10),
            ],
          ),

          //chats================

          body: TabBarView(children: [
            Text('camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/1.png'),
                    ),
                    title: Text("Arsalan Aftab",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('Hello Bro',
                        style: TextStyle(color: Colors.white)),
                    trailing:
                        Text('10:15 PM', style: TextStyle(color: Colors.white)),
                  );
                }),

            //status==========================
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 41, 221, 5),
                              width: 3,
                            )),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/1.png'),
                          radius: 30, // Adjust the radius as needed
                        ),
                      ),
                      SizedBox(
                          height: 4), // Reduced space between image and text
                      Text("Arsalan ", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                );
              },
            ),

            //calls=====================

            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/1.png'),
                    ),
                    title: Text("Arsalan Aftab",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('Today, 9:30 PM',
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.phone, color: Colors.white),
                  );
                }),
          ]),
          bottomNavigationBar: Material(
              color: Colors.teal,
              child: TabBar(
                tabs: [
                  Tab(
                      icon: Icon(Icons.camera_alt,
                          color: Colors.white)), // Camera icon
                  Tab(
                    icon: Icon(Icons.chat, color: Colors.white), // Chat icon
                    text: 'Chats',
                  ),
                  Tab(
                    icon: Icon(Icons.update,
                        color: Colors
                            .white), // Status icon, replace with the correct one if needed
                    text: 'Status',
                  ),
                  Tab(
                    icon: Icon(Icons.call, color: Colors.white), // Calls icon
                    text: 'Calls',
                  ),
                ],
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
              )),
        ));
  }
}
