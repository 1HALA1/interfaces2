import 'package:flutter/material.dart';
import 'package:flutter_interfaces/widgets/Appbuttons.dart';


class Randomtext extends StatefulWidget {
  @override
  RandomTextState createState() => RandomTextState();
}

class RandomTextState extends State<Randomtext> {
  final RandomTextManager _manager = RandomTextManager();
  final TextEditingController _textController = TextEditingController();
  bool _isAddingText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _manager.randomTexts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_manager.randomTexts[index]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Appbuttons(
                              text: 'Edit',
                              width: 110,
                              height: 30,
                              onPressed: () {
                                // Wrap the call inside an anonymous function
                                _showEditDialog(_manager.randomTexts[index]);
                              },
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(width: 8.0),
                            Appbuttons(
                              text: 'Delete',
                              width: 110,
                              height: 30,
                              onPressed: () {
                                // Wrap the call inside an anonymous function
                                _manager.deleteRandomText(index);
                                setState(() {});
                              },
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!_isAddingText)
                    Appbuttons(
                      text: 'Add Random Text',
                      width: 200,
                      height: 40,
                      onPressed: () {
                        setState(() {
                          _isAddingText = true;
                        });
                      },
                    ),
                  if (_isAddingText)
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          hintText: 'Enter Random Text',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              _manager.addRandomText(_textController.text);
                              _textController.clear();
                              setState(() {
                                _isAddingText = false;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Text'),
          content: TextField(
            controller: TextEditingController(text: text),
            onChanged: (value) {
              text = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _manager.updateRandomText(text);
                setState(() {});
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class RandomTextManager {
  List<String> _randomTexts = [];

  List<String> get randomTexts => _randomTexts;

  void addRandomText(String text) {
    _randomTexts.add(text);
  }

  void deleteRandomText(int index) {
    _randomTexts.removeAt(index);
  }

  void updateRandomText(String newText) {
    
  }
}
