import 'package:flutter/material.dart';
import 'package:my_facebook/widgets/new_post.dart';
import 'package:my_facebook/widgets/story_box.dart';
import 'package:my_facebook/widgets/timeline.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text('Feed'),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      NewPost(),
                      StoryBox(),
                      Timeline(),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text('friend'),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text('video'),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text('marketplace'),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text('notification'),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text('setting'),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.satellite),
                ),
                Tab(
                  icon: Icon(Icons.people_outline),
                ),
                Tab(
                  icon: Icon(Icons.play_circle_outline),
                ),
                Tab(
                  icon: Icon(Icons.add_shopping_cart),
                ),
                Tab(
                  icon: Icon(Icons.notifications_none),
                ),
                Tab(
                  icon: Icon(Icons.menu),
                )
              ],
              labelColor: Colors.indigo,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(0.0),
              indicatorColor: Colors.indigo,
            ),
          )),
    );
  }
}
