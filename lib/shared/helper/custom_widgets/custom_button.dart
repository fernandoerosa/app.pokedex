import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  final String? title;
  final Color? color;
  final GestureTapCallback? press;
  final IconData? icon;

  CustomButtom({
    Key? key,
    this.title,
    this.color,
    this.press,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 180,
        height: 70,
        child: ElevatedButton.icon(
          icon: Icon(widget.icon!),
          onPressed: widget.press!,
          label: Text(widget.title!),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
