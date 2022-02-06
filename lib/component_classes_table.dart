import 'package:flutter/widgets.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/weekdays.dart';

@immutable
class ComponentClassesTable extends StatelessWidget {
  final List<WeekDay> weekDays;
  final int maxPeriod;
  final Widget Function(WeekDay weekDay, int period) builder;
  final void Function(WeekDay weekDay, int period) onClick;

  const ComponentClassesTable(
      this.weekDays, this.maxPeriod, this.builder, this.onClick,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weekDayNames =
        AppLocale.getCurrentDateFormat(context).dateSymbols.WEEKDAYS;
    return Container(
      padding: const EdgeInsets.all(2),
      child: LayoutGrid(
        columnSizes: [
          const IntrinsicContentTrackSize(),
          for (var _ in weekDays) const FlexibleTrackSize(1),
        ],
        rowSizes: [
          const IntrinsicContentTrackSize(),
          for (int i = 0; i < maxPeriod; i++) const FlexibleTrackSize(1),
        ],
        children: [
          for (var wIdx = 0; wIdx < weekDays.length; wIdx++)
            GridPlacement(
              columnStart: wIdx + 1,
              rowStart: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Text(weekDayNames[weekDays[wIdx].index]),
              ),
            ),
          for (var pIdx = 0; pIdx < maxPeriod; pIdx++)
            GridPlacement(
              columnStart: 0,
              rowStart: pIdx + 1,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    AppLocale.of(context).period_n(pIdx + 1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          for (var pIdx = 0; pIdx < maxPeriod; pIdx++)
            for (var wIdx = 0; wIdx < weekDays.length; wIdx++)
              () {
                var weekDay = weekDays[wIdx];
                var period = pIdx;
                return GridPlacement(
                  columnStart: wIdx + 1,
                  rowStart: pIdx + 1,
                  child: SizedBox.expand(
                    child: GestureDetector(
                      child: builder(weekDay, period),
                      onTap: () {
                        onClick(weekDay, period);
                      },
                    ),
                  ),
                );
              }(),
        ],
      ),
    );
  }
}
