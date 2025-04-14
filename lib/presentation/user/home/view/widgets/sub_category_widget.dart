import 'package:flutter/material.dart';

final List<Map<String, dynamic>> items = [
  {"title": "Freedom", "icon": Icons.flag},
  {"title": "Heroes", "icon": Icons.shield},
  {"title": "Trees", "icon": Icons.park},
  {"title": "Animals", "icon": Icons.pets},
  {"title": "Fantasy", "icon": Icons.auto_awesome},
];

@override
Widget subCategoryWidget(BuildContext context) {
  return SizedBox(
    height: 80,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      padding: EdgeInsets.symmetric(horizontal: 10),
      separatorBuilder: (_, __) => SizedBox(width: 10),
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(items[index]["icon"]),
            ),
            SizedBox(height: 5),
            Text(items[index]["title"], style: TextStyle(fontSize: 12)),
          ],
        );
      },
    ),
  );
}
