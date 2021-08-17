import 'package:flutter/material.dart';
import 'package:instagram_clone_two/constants/story_json.dart';
import 'package:instagram_clone_two/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Column(children: <Widget>[
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(stories.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 10),
            child: Column(
              children: <Widget>[
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: KStoryBorderColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(color: black, width: 2),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  stories[index]['img'].toString()),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 70,
                  child: Text(
                    stories[index]['name'],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          );
        })),
      ),
    ]);
  }
}
