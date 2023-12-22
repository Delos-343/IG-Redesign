import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

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
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Following
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '1532',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
          
                  // Profile Picture
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey[100],
                      ),
                    ),
                  ),
          
                  // Followers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1574',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Name

              // Bio

              // Link

              // Buttons

              // Tab Bar
              TabBar(
                tabs: tabs,
            ),
            Expanded(child: TabBarView(children: tabBarViews))
            ],
          ),
        ),
      ),
    );
  }
}