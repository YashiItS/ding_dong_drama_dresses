import 'package:flutter/material.dart';

Widget headerWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined, size: 18),
            SizedBox(width: 4),
            Text("55,Malwa Mill indore....", style: TextStyle(fontSize: 14)),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Icon(Icons.menu),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.favorite_border),
            SizedBox(width: 10),
            Icon(Icons.person_outline),
            SizedBox(width: 10),
            Icon(Icons.notifications_outlined),
          ],
        ),
      ],
    ),
  );
}