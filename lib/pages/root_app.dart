import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_two/pages/home_page.dart';
import 'package:instagram_clone_two/theme/colors.dart';

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
      backgroundColor: black,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget? getBody() {
    List<Widget> pages = [
      HomePage(),
      Center(
        child: Text(
          "Search",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          "Upload",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          "Activities",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          "Account",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: white, fontSize: 20),
        ),
      )
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  AppBar? getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: KAppBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/camera_icon.svg',
              width: 30,
            ),
            Text(
              "Instagram",
              style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
            ),
            SvgPicture.asset(
              'assets/images/message_icon.svg',
              width: 30,
            ),
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return AppBar(
        title: Text('Search'),
        centerTitle: true,
        backgroundColor: KAppBarColor,
      );
    } else if (pageIndex == 2) {
      return AppBar(
        centerTitle: true,
        backgroundColor: KAppBarColor,
        title: Text('Upload'),
      );
    } else if (pageIndex == 3) {
      return AppBar(
        centerTitle: true,
        backgroundColor: KAppBarColor,
        title: Text('Activity'),
      );
    } else {
      return AppBar(
        centerTitle: true,
        backgroundColor: KAppBarColor,
        title: Text("Account"),
      );
    }
  }

  Widget? getFooter() {
    List<String> bottomItems = [
      pageIndex == 0
          ? 'assets/images/home_active_icon.svg'
          : 'assets/images/home_icon.svg',
      pageIndex == 1
          ? 'assets/images/search_active_icon.svg'
          : 'assets/images/search_icon.svg',
      pageIndex == 2
          ? 'assets/images/upload_active_icon.svg'
          : 'assets/images/upload_icon.svg',
      pageIndex == 3
          ? 'assets/images/love_active_icon.svg'
          : 'assets/images/love_icon.svg',
      pageIndex == 4
          ? 'assets/images/account_active_icon.svg'
          : 'assets/images/account_icon.svg',
    ];

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(color: KAppBarColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: SvgPicture.asset(
                  bottomItems[index],
                  width: 27,
                ),
              );
            })),
      ),
    );
  }

  void selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
