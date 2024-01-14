import 'package:flutter/material.dart';
import 'package:material_color_utilities/hct/hct.dart';

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
    var h = 10 + 250 * colorPosition;
    if (Theme.of(context).brightness == Brightness.light) {
      l = 88.0;
      c = 50.0;
    } else {
      l = 72.0;
      c = 40.0;
    }

    var textStyle =
        Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black);

    var color = _lchToRgb(l, c, h);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      margin: const EdgeInsets.all(2.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2.0),
              decoration: ShapeDecoration(
                  color: color,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)))),
              child: Text(
                name,
                style: textStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              room,
              style: Theme.of(context).textTheme.bodySmall,
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
        : _lchToRgb(20, 0, 0);
    return Card(
      elevation: 0,
      color: background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      margin: const EdgeInsets.all(2.0),
    );
  }
}

Color _lchToRgb(double l, double c, double h) {
  var color = Hct.from(h, c, l).toInt();
  return Color(color);
}
