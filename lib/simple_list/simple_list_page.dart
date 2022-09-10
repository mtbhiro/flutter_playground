import 'package:flutter/material.dart';

class SimpleListPage extends StatelessWidget {
  const SimpleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, ((index) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          child: Column(
            children: const [
              Text('タイトルタイトルタイトル', style: TextStyle(fontSize: 16)),
              SizedBox(height: 12),
              Text(
                  'コンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツコンテンツ',
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      );
    }));
    return Scaffold(
      appBar: AppBar(
        title: const Text('シンプルリスト'),
        elevation: 0,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}
