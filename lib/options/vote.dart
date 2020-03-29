class Vote{
  String voteId;
  String voteTitle;
  List<Map<String, int>> options;

  Vote({this.voteId, this.voteTitle, this.options});
}

class Voter{
  String uId;
  String voterId;
  int markVoteOption;
}