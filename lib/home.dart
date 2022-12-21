import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupSimple = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Widgets")),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Text("TextFormField #1 "),
            TextFormField(),
            Text("TextFormField #2 "),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: "*",
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Username',
                  hintText: 'Enter Username'),
            ),
            Text("RadioListTitle #1"),
            RadioListTile(
              title: Text('Item title 1'),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'title 1',
              groupValue: groupSimple,
              onChanged: (value) {
                setState(() {
                  groupSimple = value!;
                });
                print(groupSimple);
              },
            ),
            RadioListTile(
              title: Text('Item title 2'),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'title 2',
              groupValue: groupSimple,
              onChanged: (value) {
                setState(() {
                  groupSimple = value!;
                });
                print(groupSimple);
              },
            ),
            RadioListTile(
              tileColor: Colors.blue,
              title: Text('Item title 3'),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'title 3',
              groupValue: groupSimple,
              onChanged: (value) {
                setState(() {
                  groupSimple = value!;
                });
                print(groupSimple);
              },
            ),
            Text(groupSimple),
            Text("CheckboxListTitle #1 Simple"),
            CheckboxListTile(
                title: Text('Libary Implementaion of Searching'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
