import 'package:flutter/material.dart';
import 'package:todo/ui/screens/bottomSheet/add_bottomsheet/add_bottomSheet.dart';
import 'package:todo/ui/screens/home/tabs/listTab/list_tab.dart';
import 'package:todo/ui/screens/home/tabs/settings_tab.dart';
class Home extends StatefulWidget {
  static const String routeName = 'home';
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
       ListTab(),
      const SettingsTab(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To do app',style: TextStyle(),
        ),
      ),
      bottomNavigationBar: buildButtomNavigationBar(),
      body: tabs[currentTabIndex],
      floatingActionButton: buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
   buildButtomNavigationBar(){
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 12,
      clipBehavior: Clip.hardEdge,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        backgroundColor: Colors.white,
          currentIndex: currentTabIndex,
          onTap: (value) {
            currentTabIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list) , label: 'list'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
          ]
      ),
    );
  }
   buildFAB() => FloatingActionButton(onPressed: (){
     showModalBottomSheet(
         isScrollControlled: true,
         context: context, builder: (context) => Padding(
         padding: MediaQuery.of(context).viewInsets ,
         child: const AddButtomSheet()));
   },
     shape: const StadiumBorder( side: BorderSide(color: Colors.white,width: 3)) ,
     child: const Icon(Icons.add),);
}
