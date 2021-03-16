import 'package:flutter/material.dart';
import '../palette.dart';

class CustomInputBox extends StatefulWidget {

  String inputHint;
  String label;
  final titleController = TextEditingController();
  final notesController = TextEditingController();

  CustomInputBox({this.label, this.inputHint});
  @override
  _CustomInputBoxState createState() => _CustomInputBoxState();
}

class _CustomInputBoxState extends State<CustomInputBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 3.0, bottom: 3.0),
            child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 12,
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 25.0, 20.0),
          child: TextFormField(
            onEditingComplete: (){},
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Palette.abu,
                fontWeight: FontWeight.normal,
              ),
              contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 5
              ),
              focusColor: Palette.ijo,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Palette.ijo,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Palette.abu,
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
}
