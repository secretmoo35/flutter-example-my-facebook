import 'package:flutter/material.dart';
import 'package:my_facebook/models/story_model.dart';

class StoryBox extends StatefulWidget {
  _StoryBoxState createState() => _StoryBoxState();
}

class _StoryBoxState extends State<StoryBox> {
  List<dynamic> storyList = new List<dynamic>();

  _StoryBoxState() {
    storyList.add(StoryModel(
        "Add story",
        "https://www.shareicon.net/data/2016/08/18/809318_add_512x512.png",
        "http://backgroundcheckall.com/wp-content/uploads/2017/12/profile-pic-background-1.jpg"));
    storyList.add(StoryModel(
        "Bucky Barnes",
        "https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/bucky-barnes-the-winter-soldier-9.jpg?itok=KJxz3Og5&timestamp=1523462863",
        "https://i.pinimg.com/originals/b4/c0/c6/b4c0c6e01fd5a27ab459549155c74501.png"));
    storyList.add(StoryModel(
        "Tony Stark",
        "https://pbs.twimg.com/profile_images/937524704549711872/OM0q5gts_400x400.jpg",
        "https://static1.comicvine.com/uploads/original/11125/111256935/5135043-7048.jpg"));
    storyList.add(StoryModel(
        "Steve Rogers",
        "https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg",
        "http://cfile223.uf.daum.net/image/2176A6435664F6883ABC92"));

    storyList.add(StoryModel(
        "Bucky Barnes",
        "https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/bucky-barnes-the-winter-soldier-9.jpg?itok=KJxz3Og5&timestamp=1523462863",
        "https://i.pinimg.com/originals/b4/c0/c6/b4c0c6e01fd5a27ab459549155c74501.png"));
    storyList.add(StoryModel(
        "Tony Stark",
        "https://pbs.twimg.com/profile_images/937524704549711872/OM0q5gts_400x400.jpg",
        "https://static1.comicvine.com/uploads/original/11125/111256935/5135043-7048.jpg"));
    storyList.add(StoryModel(
        "Steve Rogers",
        "https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg",
        "http://cfile223.uf.daum.net/image/2176A6435664F6883ABC92"));

    storyList.add(StoryModel(
        "Bucky Barnes",
        "https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/bucky-barnes-the-winter-soldier-9.jpg?itok=KJxz3Og5&timestamp=1523462863",
        "https://i.pinimg.com/originals/b4/c0/c6/b4c0c6e01fd5a27ab459549155c74501.png"));
    storyList.add(StoryModel(
        "Tony Stark",
        "https://pbs.twimg.com/profile_images/937524704549711872/OM0q5gts_400x400.jpg",
        "https://static1.comicvine.com/uploads/original/11125/111256935/5135043-7048.jpg"));
    storyList.add(StoryModel(
        "Steve Rogers",
        "https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg",
        "http://cfile223.uf.daum.net/image/2176A6435664F6883ABC92"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 6.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'เรื่องราว'.padLeft(10),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[800]),
              ),
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 4.0, right: 1.0),
                      child: Icon(
                        Icons.access_time,
                        size: 14.0,
                      ),
                    ),
                    Text(
                      'คลังเรื่องราวของคุณ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyList.length,
              itemBuilder: (context, index) {
                var story = storyList[index];
                return Container(
                  margin: EdgeInsets.only(right: 6.0),
                  width: 120.0,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      //BackgroundImage
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(story.backgroundImageUrl),
                          ),
                        ),
                      ),
                      //Post story
                      Positioned(
                        bottom: 25.0,
                        left: 0.0,
                        right: 0.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 48.0,
                              width: 48.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(story.profileImageUrl),
                                ),
                              ),
                            ),
                            // CircleAvatar(
                            //   backgroundImage:
                            //       NetworkImage(story.profileImageUrl),
                            // ),
                            Text(
                              story.username,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
