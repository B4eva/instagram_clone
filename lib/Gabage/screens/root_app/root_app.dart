import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:instagram_clone_two/components/app_footer.dart';
import 'package:instagram_clone_two/theme/colors.dart';

import 'components/body.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Body(),
        //   bottomNavigationBar: AppFooter(),
        appBar: getAppBAr(pageIndex));
  }

  AppBar? getAppBAr(index) {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: KPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/camera_icon.svg',
              width: 30,
            ),
            SizedBox(
              width: 40,
            ),
            Text("Instagram",
                style: TextStyle(fontFamily: 'Billabong', fontSize: 35)),
            SizedBox(
              width: 40,
            ),
            SvgPicture.asset(
              'assets/images/message_icon.svg',
              width: 30,
            )
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return null;
    } else if (pageIndex == 2) {
      return AppBar(
        backgroundColor: KAppBarColor,
        title: Text("Upload"),
      );
    }
  }
}
