import 'package:flutter/material.dart';

class FriendList extends StatefulWidget {
  _FriendListState createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  'คำขอเป็นเพื่อน',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ],
          ),
          Divider(
            height: 1.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(12.0),
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
                                  'https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/syfywire_blog_post/2018/09/aiw_online_1_sheet_drax_v1_sm.jpg?itok=XWSx2LJe&timestamp=1536106479'),
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
                                'Sarayut kungsaranuwat',
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
                                  Text('มีเพื่อนร่วมกัน 5 คน'),
                                ],
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
                                  Container(
                                    child: ButtonTheme(
                                      height: 24.0,
                                      child: FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'ยืนยัน',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                        color: Colors.blue,
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 4.0),
                                    child: ButtonTheme(
                                      height: 24.0,
                                      child: FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'ลบ',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                        color: Colors.grey[300],
                                        textColor: Colors.black,
                                      ),
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
            ],
          )
        ],
      ),
    );
  }
}
