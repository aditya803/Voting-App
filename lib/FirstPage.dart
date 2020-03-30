import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voting_app/Widgets/vote_options.dart';
import 'package:voting_app/state/vote_start.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //loading votes
    Future.microtask(() {
      Provider.of<VoteState>(context, listen: false).clearState();
      Provider.of<VoteState>(context, listen: false).loadVoteList();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(
            'Ballot',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.red[600],
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: VoteOptions(),
      ),
     );
  }
}
