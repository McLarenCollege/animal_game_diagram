class Node{
  String question;
  Node parentNode;
  Node yesChild;
  Node noChild;
  String animal;

  Node({this.question,this.parentNode,this.yesChild,this.noChild,this.animal});


  static String data = """ {
    "start": "Think of an animal",
    "isItA": "Is it a ",
    "again": "Try again",
    "differ": "Distinction question",
    "exit": "The End",
    "confirmExit": "exit?",
    "data": [["Does it fly?", "Duck", "Monkey"]]
    }""";

}
