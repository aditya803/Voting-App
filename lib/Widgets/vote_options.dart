import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/state/vote_start.dart';
import 'package:voting_app/options/vote.dart';


class VoteOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<VoteState>(
      builder: (context, voteState, child) {
        return Column(
          children: <Widget>[
            for(Vote vote in voteState.voteList)
              Card(
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      vote.voteTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.black,

                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
