

import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  List<Text> tabBar = [
    const Text('Page 1'),
    const Text('Page 2'),
    const Text('Page 3'),
    const Text('Page 4'),
  ];
  List<Center> tabBarView = [
    const Center(child: Text('Page 1')),
    const Center(child: Text('Page 2')),
    const Center(child: Text('Page 3')),
    const Center(child: Text('Page 4')),
  ];
  addTabItem() {
    tabBar.add(
      Text("Page ${tabBarView.length + 1}"),
    );
    tabBarView.add(
      Center(child: Text("Page ${tabBarView.length + 1}")),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBar.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            physics: const BouncingScrollPhysics(),
            tabs: tabBar,
          ),
        ),
        body: TabBarView(
          children: tabBarView.map((e) => e).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addTabItem();
          },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

