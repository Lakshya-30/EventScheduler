import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text('New Event'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Event',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.event,
                    color: Colors.white,
                  ),
                  tileColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  subtitle: TextField(
                    maxLines: null,
                    controller: _textEditingController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder:UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple ),
                        ),
                    ),
                  ),
                ),
              ),
              Builder(builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      String eventText = _textEditingController.text;
                      Navigator.of(context).pop(eventText);
                    },
                    child: Text('ADD'),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white38,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        minimumSize: Size.fromHeight(50),
                    ),
                  ),
                );
              }),
            ],
          ),
        ));
  }
}
