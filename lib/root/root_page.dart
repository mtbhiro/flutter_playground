import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DebugRouteData {
  final title;
  final pathName;
  const DebugRouteData(this.title, this.pathName);
}

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  static const routes = [
    DebugRouteData('Simple List', 'simpleList'),
    DebugRouteData('Sample2', 'sample2'),
    DebugRouteData('Sample3', 'sample3'),
  ];

  @override
  Widget build(BuildContext context) {
    final routeItems = routes.map((e) {
      return ListTile(
        title: Text(e.title),
        subtitle: Text(e.pathName),
        onTap: () {
          context.goNamed(e.pathName);
        },
      );
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Root Page'),
      ),
      body: SafeArea(child: ListView(children: routeItems)),
    );
  }
}
