import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voting_app/FirstPage.dart';
import 'package:voting_app/state/vote_start.dart';

void main()=> runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => VoteState(),
      )
    ],
  child: MyApp(),
 )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
      routes: <String, WidgetBuilder> {
        '/First': (context) => FirstPage(),
      } ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Ballot',
                     style: TextStyle(
                       fontSize: 80.0, fontWeight: FontWeight.bold
                     )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(17.0, 182.0, 0.0, 0.0),
                  child: Text(
                      'Every vote counts',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold
                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(255.0, 173.0, 0.0, 0.0),
                  child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.red[600]
                      )
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 95.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'VOTER ID',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                          decoration: InputDecoration(
                          labelText: 'DOB',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          )
                      ),
                    ),
                SizedBox(height: 100.0),
                Container(
                  height: 50.0,
                  child: Material(
                    color: Colors.red[600],
                    child: FlatButton(
                      onPressed: () => signIn(context),
                      child: Center(
                        child: Text(
                          'Vote!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  void signIn(BuildContext context){
    Navigator.pushReplacementNamed(context, '/First');
  }
}

