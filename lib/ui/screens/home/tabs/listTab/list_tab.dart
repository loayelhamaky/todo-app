import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/screens/home/tabs/listTab/todoWidget.dart';

import '../../../../providers/list_provider.dart';
class ListTab extends StatefulWidget {
  ListTab({super.key});

  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  late DateTime hh;
  late ListProvider listProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      listProvider.refreshTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          EasyInfiniteDateTimeLine(
              firstDate: DateTime.now(),
              onDateChange: (selectedDate) => hh = selectedDate,
              focusDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365),)),
          Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ToDoWidget();
          },),
        ),
      ]
      ),
    );
  }
}
