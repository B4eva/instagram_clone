import 'package:flutter/material.dart';
import 'package:instagram_clone_two/components/app_footer.dart';

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
      bottomNavigationBar: AppFooter(),
    );
  }
}
