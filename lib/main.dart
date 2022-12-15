import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text('Event Scheduler'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                tileColor: Colors.white,
                title: _list[index],
              ),
            ))
        ),

        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText =await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newText, textAlign: TextAlign.center,));
                });
              },
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
