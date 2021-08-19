import 'package:flutter/material.dart';
import 'package:instagram_clone_two/constants/search_json.dart';
import 'package:instagram_clone_two/theme/colors.dart';
import 'package:instagram_clone_two/widgets/search_catergory.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SafeArea(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                width: size.width - 30,
                height: 40,
                decoration: BoxDecoration(
                  color: KtextFieldBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: white.withOpacity(0.3),
                        )),
                    style: TextStyle(
                      color: white.withOpacity(0.3),
                    ),
                    cursorColor: white.withOpacity(0.3)),
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: List.generate(searchCategories.length, (index) {
                return CatergoryStory(
                  name: searchCategories[index],
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 1,
          runSpacing: 1,
          children: List.generate(searchImages.length, (index) {
            return Container(
              width: (size.width - 30) / 3,
              height: (size.width - 30) / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(searchImages[index]),
                      fit: BoxFit.cover)),
            );
          }),
        )
      ],
    ));
  }
}
