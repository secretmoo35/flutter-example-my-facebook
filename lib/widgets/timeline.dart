import 'package:flutter/material.dart';
import 'package:my_facebook/models/timeline_model.dart';

class Timeline extends StatefulWidget {
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  List<dynamic> timelineList = new List<dynamic>();
  _TimelineState(){
    timelineList.add(TimelineModel("Steve Rogers","https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg","2 ชม.","440","จีบตอนเด็กแถมฟรีตอนโต","https://www.thewrap.com/wp-content/uploads/2011/08/cap.jpg"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("Steve Rogers","https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg","3 วันที่แล้ว","44","อิสรภาพมีราคาแพง แต่นั่นก็เป็นราคาที่ผมยอมจ่าย",""));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
    timelineList.add(TimelineModel("username","profileIMG","time","like","content","img"));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 48.0,
                          width: 48.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://scontent.fbkk12-2.fna.fbcdn.net/v/t1.0-9/23722698_1428494040602985_5579022131629781474_n.jpg?_nc_cat=100&oh=a67615ddba86b7b8c857dbdc5b3060c0&oe=5C4E1FAE'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Sarayut Kungsaranuwat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800]),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                              child: Row(
                                children: <Widget>[
                                  Text('20 นาที'),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(6.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 0.0,
                height: 0.0,
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 20,
                padding: EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 0.0),
                child: Text(
                  'Hello flutter... Flutter is a mobile app SDK for building high-performance, high-fidelity, apps for iOS and Android, from a single codebase. The goal is to enable developers to deliver high-performance apps that feel natural on different platforms. We embrace differences in scrolling behaviors, typography, icons, and more.',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey[700],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Like',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      color: Colors.grey[700],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Comment',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.grey[700],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Share',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
