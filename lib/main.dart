import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/feed.dart';
import 'package:flutter_instagram/Screens/footer.dart';
import 'package:flutter_instagram/Screens/header.dart';
import 'package:flutter_instagram/Screens/profile.dart';
import 'package:flutter_instagram/Screens/stories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('pedro.vh05'),
        ),
        body: ListView(
          children: [
            ProfileHeader(),
            EditProfileButton(),
            StoriesSection(),
            PhotosGrid(),
          ],
        ),
      ),
    );
  }
}
