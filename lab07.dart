import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation with Assets',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'id': '1', 'title': 'Sunset', 'image': 'assets/images/img1.jpg'},
    {'id': '2', 'title': 'Mountain', 'image': 'assets/images/img2.jpg'},
    {'id': '3', 'title': 'River', 'image': 'assets/images/img3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Local Images')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Hero(
              tag: item['id']!,
              child: Image.asset(
                item['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(item['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map<String, String> item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['title']!)),
      body: Center(
        child: Hero(
          tag: item['id']!,
          child: Image.asset(
            item['image']!,
            width: 300,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
