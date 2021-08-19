import 'package:flutter/material.dart';
import 'package:instagram_clone_two/theme/colors.dart';

class CatergoryStory extends StatelessWidget {
  const CatergoryStory({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Container(
          decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: white.withOpacity(0.3))),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 25, bottom: 10, top: 10),
            child: Text(
              name!,
              style: TextStyle(
                  color: white, fontWeight: FontWeight.w500, fontSize: 15),
            ),
          )),
    );
  }
}
