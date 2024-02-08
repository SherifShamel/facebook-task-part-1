import 'package:facebook_task_modified/home_body.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      initialIndex: currentTab,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: TabBarView(
          children: [
            HomeBody(),
            HomeBody(),
            HomeBody(),
            HomeBody(),
            HomeBody(),
            HomeBody(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.only(bottom: 5),
        onTap: (value) {
          currentTab = value;
          setState(() {});
        },
        labelColor: Colors.blue,
        indicatorColor: Colors.blue,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Icon(currentTab == 0 ? Icons.home : Icons.home_filled),
          Icon(currentTab == 1
              ? Icons.video_call_outlined
              : Icons.video_call_rounded),
          Icon(currentTab == 2 ? Icons.people : Icons.people_alt_outlined),
          Icon(currentTab == 3 ? Icons.person : Icons.person_2_outlined),
          Icon(currentTab == 4
              ? Icons.notifications_active
              : Icons.notifications),
          Icon(currentTab == 5 ? Icons.menu_sharp : Icons.menu_outlined),
        ],
      ),
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      title: const Text(
        "facebook",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      titleTextStyle: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage("assets/img/plus.png"))),
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage("assets/img/chat.png"))),
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(
                AssetImage("assets/img/search-interface-symbol.png"))),
      ],
    );
  }
}
