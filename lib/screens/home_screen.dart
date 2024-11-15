import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Icon(Icons.add),
            ),
            appBar: AppBar(
              title: Text(count.toString()),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.home_max_sharp)),
              ],
              bottom: PreferredSize(
                  preferredSize: Size(60, 60),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Search'),
                  )),
              // bottom: TabBar(
              //     indicatorColor: Colors.pink,
              //     dividerColor: Colors.red,
              //     tabs: [
              //       Tab(text: 'All'),
              //       Tab(text: 'Completed'),
              //       Tab(text: 'Archived'),
              //     ]),
            ),
            body: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(),
                trailing: Text('11:23pm'),
                subtitle: Text('Hi, how are you?'),
                title: Text('Victor'),
              ),
            )));

    //   Row(
    //     children: [
    //       Expanded(
    //         child: Container(
    //           alignment: Alignment.center,
    //           height: 100,
    //           width: 100,
    //           color: Colors.red,
    //           child: const Text(
    //             '1',
    //             style: TextStyle(color: Colors.white, fontSize: 35),
    //           ),
    //         ),
    //       ),
    //       Container(
    //         alignment: Alignment.center,
    //         height: 100,
    //         width: 100,
    //         color: Colors.green,
    //         child: const Text(
    //           '2',
    //           style: TextStyle(
    //               textBaseline: TextBaseline.alphabetic,
    //               color: Colors.white,
    //               fontSize: 35),
    //         ),
    //       ),
    //       Expanded(
    //         child: Container(
    //           alignment: Alignment.center,
    //           height: 100,
    //           width: 100,
    //           color: Colors.blue,
    //           child: const Text(
    //             '3',
    //             style: TextStyle(color: Colors.white, fontSize: 35),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    // );
  }
}
