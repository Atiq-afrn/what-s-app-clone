import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen1.dart';

class ScreenA extends StatefulWidget {
  static const String id = 'homescreen';
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => HomeScreenState();
}

class HomeScreenState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            title: const Text('Whats app'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
                Tab(
                  child: Text('Status'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text('New Groups'),
                  ),
                  const PopupMenuItem(
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      Navigator.pushNamed(context, ScreenB.id);
                    },
                    child: const Text('LogOut'),
                  )
                ],
              )
            ]),
        body: TabBarView(
          children: [
            const Icon(Icons.camera),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  title: Text('Atiq khan'),
                  subtitle: Text('postrait infront of Allah'),
                  trailing: Text('8:33 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  title: const Text('Atiq khan'),
                  subtitle: Text(index / 2 == 0
                      ? 'Last missed call from khan'
                      : 'you missed video call'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                            ),
                          ),
                          title: const Text('Atiq khan'),
                          subtitle: const Text('45 min ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2)),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      ),
                    ),
                    title: const Text('Atiq khan'),
                    subtitle: const Text('45 min ago'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
