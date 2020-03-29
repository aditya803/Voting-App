import 'package:voting_app/options/vote.dart';
import 'package:uuid/uuid.dart';

List<Vote> getVoteList() {
  //Mock Data
  List<Vote> voteList = List<Vote>();

  voteList.add(Vote(
    voteId: Uuid().v4(),
    voteTitle: 'Select whom you want to vote for',
    options: [
      {'A': 70},
      {'B': 20},
      {'C': 10},
    ]
   )
  );

  return voteList;
}