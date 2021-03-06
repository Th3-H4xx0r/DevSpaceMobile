import 'package:flutter/material.dart';


class RecentPosts extends StatefulWidget {
  @override
  _RecentPostsState createState() => _RecentPostsState();
}

class _RecentPostsState extends State<RecentPosts> {
  final List<String> items = [
    'John Doe',
    'Bob Doe'
  ];
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
              'Messages',
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
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });

                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("$item dismissed")));
                },
                background: Container(color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10  
                  ),
                  child: ListTile(
                    title: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$item',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text(
                              '$item 32424',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://s.abcnews.com/images/GMA/ASAP-rocky-file-gty-ml-190814_hpMain_16x9_992.jpg'),fit: BoxFit.cover),
                        shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height / 2 + 200,
        )
      ]),
    );
  }
}
