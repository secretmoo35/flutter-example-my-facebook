import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 6.0),
      // child: Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 44.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://scontent.fbkk12-2.fna.fbcdn.net/v/t1.0-9/23722698_1428494040602985_5579022131629781474_n.jpg?_nc_cat=100&oh=a67615ddba86b7b8c857dbdc5b3060c0&oe=5C4E1FAE'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'คุณกำลังคิดอะไรอยู่',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 0.5,
            color: Colors.grey[200],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.videocam,
                      color: Colors.redAccent,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Live',
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
                      Icons.photo_library,
                      color: Colors.greenAccent[400],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'รูปภาพ',
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
                      Icons.place,
                      color: Colors.pinkAccent[400],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'เช็คอิน',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      // ),
    );
  }
}
