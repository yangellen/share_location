import 'package:flutter/material.dart';
import 'package:flutter_practice_wk8/screens/camera_screen.dart';
import 'package:flutter_practice_wk8/screens/share_location_screen.dart';

class MainTabController extends StatelessWidget {
  final screens = [
    ShareLocationScreen(
      title: 'Share Location Screen',
    ),
    CameraScreen(
      title: 'Share Location Screen',
    )
  ];

  final tabs = [
    Tab(icon: Icon(Icons.add_location)),
    //Tab(icon: Icon(Icons.cloud_upload)),
    Tab(icon: Icon(Icons.camera_alt))
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Practice'),
              centerTitle: true,
              bottom: TabBar(tabs: tabs),
            ),
            body: TabBarView(
              children: screens,
            )));
  }
}
