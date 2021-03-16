import 'package:flutter/material.dart';
import '../models/model.dart';

class IncomeCategoryContainer extends StatelessWidget {
  final List<InCategory> inCategories;
  IncomeCategoryContainer(this.inCategories);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            padding: EdgeInsets.fromLTRB(0.0, .00, 0.0, 20.0),
            child: Row(
                children: [
                  const SizedBox(width: 25.0),
                  Image(image: AssetImage(inCategories[index].image,
                  ),
                    width: 45.0,
                    height: 45.0,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      inCategories[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ]
            ),
          );
        },
        itemCount: inCategories.length,
      ),
    );
  }
}
