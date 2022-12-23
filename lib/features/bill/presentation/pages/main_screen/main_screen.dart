import 'package:billapp/features/bill/presentation/pages/main_screen/widgets/custom_list_title.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          shadowColor: Colors.transparent,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.grey[600]),
          backgroundColor: Colors.transparent,
          primary: true,
        ),
        body: SafeArea(
            child: PageView(
          scrollDirection: Axis.vertical,
          children: const [
            HelperPage(),
          ],
        )));
  }
}
