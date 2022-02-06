import 'dart:math';

import 'package:color_models/color_models.dart';
import 'package:flutter/material.dart';

@immutable
class ComponentClass {
  static StatelessWidget withDetail(
      String name, String room, double colorPosition) {
    return _ComponentClassWithDetail(name, room, colorPosition);
  }

  static StatelessWidget empty() {
    return const _ComponentClassEmpty();
  }
}

@immutable
class _ComponentClassWithDetail extends StatelessWidget {
  final String name;
  final String room;
  final double colorPosition;

  const _ComponentClassWithDetail(this.name, this.room, this.colorPosition,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double l;
    double c;
    var h = pi * colorPosition;
    if (Theme.of(context).brightness == Brightness.light) {
      l = 93.0;
      c = 46.0;
    } else {
      l = 70.0;
      c = 38.0;
    }

    var textStyle =
        Theme.of(context).textTheme.caption?.copyWith(color: Colors.black);

    return Card(
      color: _lchToRgb(l, c, h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      margin: const EdgeInsets.all(2.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              room,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class _ComponentClassEmpty extends StatelessWidget {
  const _ComponentClassEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color background = (Theme.of(context).brightness == Brightness.light)
        ? _lchToRgb(90, 0, 0)
        : _lchToRgb(30, 0, 0);
    return Card(
      elevation: 0,
      color: background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      margin: const EdgeInsets.all(2.0),
    );
  }
}

Color _lchToRgb(double l, double c, double h) {
  var color = LabColor(l, c * cos(h), c * sin(h)).toRgbColor();
  return Color.fromARGB(color.alpha, color.red, color.green, color.blue);
}
