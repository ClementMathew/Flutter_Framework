import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // APP BAR
        appBar: AppBar(
          bottom: TabBar(
              isScrollable: false,
              tabs: const [
                Tab(
                    text: "Chats",
                    icon: Icon(Icons.chat),
                    iconMargin: EdgeInsetsDirectional.all(5)),
                Tab(
                    text: "Status",
                    icon: Icon(Icons.person),
                    iconMargin: EdgeInsetsDirectional.all(5)),
                Tab(
                    text: "Calls",
                    icon: Icon(Icons.phone),
                    iconMargin: EdgeInsetsDirectional.all(5))
              ],
              indicatorColor: Colors.black,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border(
                    bottom: BorderSide(width: 5, color: design),
                    right: BorderSide(width: 5, color: design),
                    left: BorderSide(width: 5, color: design),
                    top: BorderSide(width: 5, color: design),
                  ),
                  color: Colors.red[900])),
          //TITLE
          title: Text("Tab Bar"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          // BG COLOR
          backgroundColor: design,

          // LEADING
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),

          // ACTIONS
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          //ELEVATION
          elevation: 10,
        ),
        body: TabBarView(
          children: const [
            Icon(Icons.chat, color: Colors.black, size: 300),
            Icon(Icons.person, color: Colors.black, size: 300),
            Icon(Icons.call, color: Colors.black, size: 300),
          ],
        ),
      ),
    );
  }
}