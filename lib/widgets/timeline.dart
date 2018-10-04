import 'package:flutter/material.dart';
import 'package:my_facebook/models/timeline_model.dart';

class Timeline extends StatefulWidget {
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  List<dynamic> timelineList = new List<dynamic>();
  _TimelineState() {
    timelineList.add(TimelineModel(
        "T'Challa",
        "https://www.essence.com/wp-content/uploads/2017/06/1497108138/black-panther-teasera-1200x733-860x860.jpg",
        "4 นาที",
        "678",
        "Wakanda Forever!!",
        "https://i.redd.it/xg0dqhgewdy01.png"));
    timelineList.add(TimelineModel(
        "Steve Rogers",
        "https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg",
        "2 ชม.",
        "440",
        "จีบตอนเด็กแถมฟรีตอนโต",
        "https://www.thewrap.com/wp-content/uploads/2011/08/cap.jpg"));
    timelineList.add(TimelineModel(
        "Thor เทพเจ้าแห่งค้อน",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BNjI4Mzk4NjQwOF5BMl5BanBnXkFtZTgwNjMzOTcwNDI@._CR381,31,585,585_UX402_UY402._SY201_SX201_AL_.jpg",
        "4 ชม.",
        "2",
        "ปิกาจู๊!",
        "http://mouse.latercera.com/wp-content/uploads/2018/08/Thor-wakanda-infinity-war-900x597.jpg"));
    timelineList.add(TimelineModel(
        "Thanos",
        "https://pbs.twimg.com/profile_images/992168535039381504/rlneO9iC.jpg",
        "6 ชม.",
        "5",
        "ขายครีมผิวขาว สนใจทักมาได้เลยจ้า",
        "https://www.catdumb.com/wp-content/uploads/2018/05/thanos-light.jpg"));
    timelineList.add(TimelineModel(
        "Bucky Barnes",
        "https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/bucky-barnes-the-winter-soldier-9.jpg?itok=KJxz3Og5&timestamp=1523462863",
        "2 วันที่แล้ว",
        "143",
        "จะมีเราและนายเสมอ",
        "https://i.pinimg.com/originals/6f/83/ba/6f83ba0a6f5579915f815859353f592a.jpg"));
    timelineList.add(TimelineModel(
        "Tony Stark",
        "https://pbs.twimg.com/profile_images/937524704549711872/OM0q5gts_400x400.jpg",
        "2 วันที่แล้ว",
        "526",
        "รวย ใจดี มีชุดเกราะ",
        "https://img00.deviantart.net/1203/i/2016/059/d/1/tony_stark_iron_man_by_rainbownebula_artist-d9thqcx.png"));
    timelineList.add(TimelineModel(
        "Steve Rogers",
        "https://geekyapar.com/wp-content/uploads/2018/02/Cap-Shield-e1518448979864.jpg",
        "3 วันที่แล้ว",
        "44",
        "อิสรภาพมีราคาแพง แต่นั่นก็เป็นราคาที่ผมยอมจ่าย",
        ""));
    timelineList.add(TimelineModel(
        "Drax",
        "https://www.syfy.com/sites/syfy/files/styles/1200x1200/public/syfywire_blog_post/2018/09/aiw_online_1_sheet_drax_v1_sm.jpg?itok=XWSx2LJe&timestamp=1536106479",
        "4 วันที่แล้ว",
        "2",
        "ตอนนั้นข้าก็อยู่ด้วยนะ...ข้ากำลังฝึกวิชานิ่งสงบจนใครก็ไม่สังเกตเห็น",
        "https://alchetron.com/cdn/drax-the-destroyer-a20da229-62b5-4395-982a-83208c37ddc-resize-750.png"));
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> containers = new List<Widget>();

    for (var post in timelineList) {
      var imageWidget;

      if (post.image.length > 0) {
        imageWidget = Container(
          margin: EdgeInsets.only(top: 12.0),
          width: MediaQuery.of(context).size.width,
          child: Image.network(post.image),
        );
      } else {
        imageWidget = Container();
      }

      var container = Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 6.0),
        // padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                                image: NetworkImage(post.profileImage),
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
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  post.username,
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
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(post.posttime),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          6.0, 0.0, 0.0, 0.0),
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
                  padding: EdgeInsets.fromLTRB(14.0, 8.0, 6.0, 0.0),
                  child: Text(
                    post.content,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[imageWidget],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16.0, top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                        size: 14.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2.0, top: 2.0),
                        child: Text(
                          post.likes,
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'ความคิดเห็น 59 รายการ แชร์ 10 ครั้ง',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                )
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
                          'ถูกใจ',
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
                          'แสดงความคิดเห็น',
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
                          'แชร์',
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
      containers.add(container);
    }

    return Column(children: containers);
  }
}
