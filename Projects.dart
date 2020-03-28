import 'package:flutter/material.dart';

class RecentPosts extends StatefulWidget {
  @override
  _RecentPostsState createState() => _RecentPostsState();
}

class _RecentPostsState extends State<RecentPosts> {
  final List<String> projectname = <String>[
    'Procura',
    'Canvas',
    'Delivery Deck'
  ];
  final List<String> description = <String>[
    'iuh3r iushf wiuehf iuwhf wieuhf',
    'wehfowi woiehf oweih fwoiehfwe ',
    'gfweuyif wieguf wieugfiwgef gwif'
  ];
  final List<int> members = <int>[1, 2, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 17, 17, 1),
      body: Column(children: <Widget>[
        SizedBox(
          height: 80,
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 40),
            Text(
              'Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
          ],
        ),
        SizedBox(height: 30),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50,
            height: 40,
            child: Center(
                child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text('Search',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800])),
              ],
            )),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(7)),
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: projectname.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[900].withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('${projectname[index]}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[100])),
                                Row(
                                  children: <Widget>[
                                    Text('${members[index]} ',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey[100])),
                                Icon(Icons.people,color: Colors.white,)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('${description[index]}',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[600]))
                          ],
                        ),
                      )),
                );
              }),
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height / 2 + 200,
        )
      ]),
    );
  }
}
