import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_two/constants/post_json.dart';
import 'package:instagram_clone_two/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    this.profileImg,
    this.caption,
    this.name,
    this.postImg,
    this.isLoved,
    this.likedBy,
    this.viewCount,
    this.dayAgo,
  }) : super(key: key);

  final String? profileImg;
  final String? name;
  final String? postImg;
  final String? caption;
  final isLoved;
  final String? likedBy;
  final String? viewCount;
  final String? dayAgo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(profileImg!),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      name!,
                      style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Icon(
                  LineIcons.horizontalEllipsis,
                  color: white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(postImg!), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    isLoved
                        ? SvgPicture.asset(
                            'assets/images/loved_icon.svg',
                            width: 27,
                          )
                        : Container(),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      'assets/images/comment_icon.svg',
                      width: 27,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      'assets/images/message_icon.svg',
                      width: 27,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/images/save_icon.svg',
                  width: 27,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "$likedBy",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w500, fontSize: 15),
              ),
              TextSpan(
                text: " $name",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 15),
              ),
              TextSpan(
                text: " and",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w500, fontSize: 15),
              ),
              TextSpan(
                text: " others",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ])),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: name!,
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 15),
              ),
              TextSpan(
                text: caption,
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ])),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'View $viewCount comments',
              style: TextStyle(
                  color: white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(posts[0]['profileImg']),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Add a comment...',
                        style: TextStyle(
                            color: white.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '😂',
                        style: TextStyle(
                            // color: white.withOpacity(0.5),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '😍',
                        style: TextStyle(
                            // color: white.withOpacity(0.5),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.add_circle,
                        color: white.withOpacity(0.5),
                        size: 15,
                      )
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 12,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              dayAgo!,
              style: TextStyle(
                  color: white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),

          // here
        ],
      ),
    );
  }
}
