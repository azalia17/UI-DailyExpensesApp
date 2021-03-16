import 'package:flutter/material.dart';
import '../palette.dart';

class DailyCategoryContainer extends StatefulWidget {
  String image;
  String title;
  String note;
  String howMuch;

  DailyCategoryContainer({this.image, this.title, this.note, this.howMuch});

  @override
  _DailyCategoryContainerState createState() => _DailyCategoryContainerState();
}

class _DailyCategoryContainerState extends State<DailyCategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.0,
        ),
        Row(
          children: [
            Image(
              image: AssetImage(
                widget.image,
              ),
              width: 45.0,
              height: 45.0,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    widget.note,
                    style: const TextStyle(
                      color: Palette.abu,
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.howMuch,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

