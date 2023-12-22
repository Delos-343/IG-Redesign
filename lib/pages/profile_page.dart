// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final List<Widget> tabs = const [

    // Feed
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.blueGrey,
      ),
    ),

    // Reels 
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.blueGrey,
      ),
    ),

    // Tagged
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.blueGrey,
      ),
    ),
  ];

  // Tab Bar Views
  final List<Widget> tabBarViews = const [

    // Feed View
    FeedView(),

    // Reels View
    ReelsView(),

    // Tagged View
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: tabs,
          ),
          TabBarView(children: tabBarViews)
          ],
        ),
      ),
    );
  }
}