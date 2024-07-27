import 'package:flutter/material.dart';

class AddButtomSheet extends StatefulWidget {
  const AddButtomSheet({super.key});

  @override
  State<AddButtomSheet> createState() => _AddButtomSheetState();
}

class _AddButtomSheetState extends State<AddButtomSheet> {
  DateTime selectedDate = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      padding: EdgeInsets.all(16),
      child:  Column(
        children: [
          Text('add new task',style: TextStyle(color: Colors.black,
              fontSize: 20,fontWeight: FontWeight.w500)),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title',suffixStyle: TextStyle(fontSize: 15),
            ),
          ),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              labelText: 'Description',suffixStyle: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () =>  showMyDatePIcker(),
                child: Text('select date',style:
                TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
              )),
          Text('${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
          Spacer(),
          ElevatedButton( child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('add task',textAlign: TextAlign.center),
            ],
          ),onPressed: () {

          },)
        ],
      ),
    );
  }
  void showMyDatePIcker() async{
        selectedDate = (await showDatePicker(context: context ,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2025))) ?? selectedDate;
        setState(() {

        });
  }
}

