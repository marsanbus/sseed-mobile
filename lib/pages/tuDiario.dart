import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';

// Definimos la clase DayData fuera de _TuDiarioState
class DayData {
  String? mood; // Emoji del estado de ánimo
  List<String> activities; // Lista de emojis de actividades
  String? note; // Nota o recordatorio

  DayData({this.mood, List<String>? activities, this.note})
      : activities = activities ?? [];
}

class TuDiario extends StatefulWidget {
  const TuDiario({Key? key}) : super(key: key);

  @override
  _TuDiarioState createState() => _TuDiarioState();
}

class _TuDiarioState extends State<TuDiario> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, DayData> _dayDataMap = {}; // Almacena los datos de cada día

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('es_ES', null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Diario de Registro",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: TableCalendar(
              locale: 'es_ES',
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
                _showDayDetails(selectedDay); // Mostrar detalles del día seleccionado
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = CalendarFormat.month;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Color(0xFF5a6b47),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Color(0xFFDABF94),
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  final dayData = _dayDataMap[date];
                  if (dayData == null) return SizedBox.shrink();

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (dayData.mood != null) Text(dayData.mood!),
                      if (dayData.activities.isNotEmpty)
                        Text(dayData.activities.join(' ')),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDayDetails(DateTime day) {
    final now = DateTime.now();
    final oneWeekAgo = now.subtract(Duration(days: 7));

    // Verificar si el día está dentro del rango permitido
    if (day.isAfter(now) || day.isBefore(oneWeekAgo)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("No editable"),
            content: Text("Solo puedes editar días desde hace una semana hasta hoy."),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cerrar"),
              ),
            ],
          );
        },
      );
      return; // Salir del método si el día no es editable
    }

    final dayData = _dayDataMap[day] ?? DayData();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Detalles del Día"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Estado de Ánimo:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () => _updateMood(day, '😊'),
                    icon: Text('😊'),
                  ),
                  IconButton(
                    onPressed: () => _updateMood(day, '😢'),
                    icon: Text('😢'),
                  ),
                  IconButton(
                    onPressed: () => _updateMood(day, '😡'),
                    icon: Text('😡'),
                  ),
                ],
              ),
              Text("Actividades:"),
              Wrap(
                spacing: 8.0,
                children: [
                  IconButton(
                    onPressed: () => _addActivity(day, '🏋️'),
                    icon: Text('🏋️'),
                  ),
                  IconButton(
                    onPressed: () => _addActivity(day, '📚'),
                    icon: Text('📚'),
                  ),
                  IconButton(
                    onPressed: () => _addActivity(day, '🎮'),
                    icon: Text('🎮'),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: "Nota"),
                onChanged: (value) => _updateNote(day, value),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }

  void _updateMood(DateTime day, String mood) {
    setState(() {
      _dayDataMap[day] ??= DayData();
      _dayDataMap[day]!.mood = mood;
    });
  }

  void _addActivity(DateTime day, String activity) {
    setState(() {
      _dayDataMap[day] ??= DayData();
      _dayDataMap[day]!.activities.add(activity);
    });
  }

  void _updateNote(DateTime day, String note) {
    setState(() {
      _dayDataMap[day] ??= DayData();
      _dayDataMap[day]!.note = note;
    });
  }
}