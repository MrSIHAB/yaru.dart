import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaru Example',
      theme: yaruTheme,
      home: MyHomePage(title: 'Yaru Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController(
      text:
          'My code fails.\nI do not know why.\nMy code works.\nI do not know why.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Text(
              'headline1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'headline2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'headline3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'headline4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'headline5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'headline6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'subtitle1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'subtitle2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'bodyText1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'bodyText2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'caption',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'button',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'overline',
              style: Theme.of(context).textTheme.overline,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () => print('RaisedButton'),
                  child: const Text('Click me!'),
                ),
                SizedBox(width: 15),
                RaisedButton(
                  child: const Text("Can't click me!"),
                ),
                SizedBox(width: 15),
                DropdownButton<int>(
                  onChanged: (value) => print('DropdownButton ${value}'),
                  value: 1,
                  items: <DropdownMenuItem<int>>[
                    DropdownMenuItem(value: 1, child: Text('One')),
                    DropdownMenuItem(value: 2, child: Text('Two')),
                    DropdownMenuItem(value: 3, child: Text('Three')),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: (value) {}, value: true),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(value: true),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: true),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(onChanged: (value) {}, value: false),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Switch(value: true),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 1, groupValue: 1),
                        Text('Yes'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(onChanged: (value) {}, value: 2, groupValue: 1),
                        Text('No'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(value: 3, groupValue: 1),
                        Text('Disabled'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                errorText: "You're doing it wrong",
              ),
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              controller: textController,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruUbuntuOrange,
              child: Center(
                  child: Text('yaruUbuntuOrange',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruLightAubergine,
              child: Center(
                  child: Text('yaruLightAubergine',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruMidAubergine,
              child: Center(
                  child: Text('yaruMidAubergine',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruDarkAubergine,
              child: Center(
                  child: Text('yaruDarkAubergine',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruCanonicalAubergine,
              child: Center(
                  child: Text('yaruCanonicalAubergine',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruWarmGrey,
              child: Center(
                  child: Text('yaruWarmGrey',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruCoolGrey,
              child: Center(
                  child: Text('yaruCoolGrey',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              width: 250.0,
              height: 50.0,
              color: yaruTextGrey,
              child: Center(
                  child: Text('yaruTextGrey',
                      style: Theme.of(context).textTheme.headline6)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
