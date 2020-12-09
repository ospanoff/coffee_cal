import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/dialog.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  Future<void> _fillInfo() async {
    await showDialog(
        context: context,
        builder: (context) {
          return CupDialog();
        });
    print('DONE!');
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    print(day);
    _fillInfo();
  }

  Widget _outsideBuilder(context, date, _) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      alignment: Alignment.center,
      child:
          Opacity(opacity: 0.5, child: Image.asset('assets/images/cup2.png')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      availableGestures: AvailableGestures.none,
      headerStyle: HeaderStyle(
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      builders: CalendarBuilders(
        dayBuilder: (context, date, _) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(4.0),
                alignment: Alignment.center,
                child: Image.asset('assets/images/cup2.png'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Text(
                  '${date.day}',
                  style: TextStyle().copyWith(fontSize: 16.0),
                ),
              )
            ],
          );
        },
        outsideDayBuilder: _outsideBuilder,
        outsideWeekendDayBuilder: _outsideBuilder,
      ),
      onDaySelected: _onDaySelected,
    );
  }
}
