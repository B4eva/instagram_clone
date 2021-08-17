import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_two/theme/colors.dart';

class AppFooter extends StatefulWidget {
  const AppFooter({
    Key? key,
  }) : super(key: key);

  @override
  _AppFooterState createState() => _AppFooterState();
}

class _AppFooterState extends State<AppFooter> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
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
      decoration: BoxDecoration(color: KAppFooterColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: SvgPicture.asset(
                bottomItems[index],
                width: 30,
              ),
            );
          }),
        ),
      ),
    );
  }

  selectedTab(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
