import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(22),
      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 62, width: 4, color: Colors.blue,margin:
          const EdgeInsets.symmetric(horizontal: 12),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('play hhhh',style: TextStyle(color: Colors.blue,fontSize: 27)),
                Container(width: 7,),
                Text('jjjjjj',style: TextStyle(color: Colors.black,fontSize: 19))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 21),
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color: Colors.blue,
           ),
            child: Icon(Icons.check,color: Colors.white,size: 30),)
        ],
      ),
    );
  }
}
