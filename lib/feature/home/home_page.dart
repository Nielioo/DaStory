import 'package:dastory/core/themes/themes.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Story App',
          style: Style.headline1,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await AuthLocal().removeAuthData();
                context.goNamed('login');
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
