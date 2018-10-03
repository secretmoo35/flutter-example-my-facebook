import 'package:flutter/material.dart';
import 'package:my_facebook/widgets/my_app_bar.dart';
import 'package:my_facebook/widgets/new_post.dart';
import 'package:my_facebook/widgets/story_box.dart';
import 'package:my_facebook/widgets/timeline.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NewPost(),
            StoryBox(),
            Timeline(),
          ],
        ),
      ),
    );
  }
}
