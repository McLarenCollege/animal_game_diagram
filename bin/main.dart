import 'dart:io';

class Node{
  String question;
  Node yes;
  Node no;

  Node({this.question,this.yes,this.no});

  getQuestion(){
    return question;
  }

  bool isLast(){
    return yes == null && no == null ? true : false;
  }

//  addYes(Node givenYes){
//    yes = givenYes;
//  }
//
//  addNo(Node givenNo){
//    no = givenNo;
//  }

  addQuestion(String givenQuestion){
    question = givenQuestion;
  }

}

class AnimalGame{
  Node root = Node(question:'duck');

  bool playGame(){
    Node head = root;

    while(!head.isLast()){
      print(head.question);
      String reply = stdin.readLineSync();
      if(reply == 'yes'){
        head = head.yes;
      }
      else {
        head = head.no;
      }
    }

    print('is it ${head.question} ?');

    String finalReply = stdin.readLineSync();

    if(finalReply != 'yes'){
      print('what is your animal? ');
      String animal = stdin.readLineSync();
      print('question that distinguishes $animal from ${head.question}');
      String newQuestion = stdin.readLineSync();
      print('is it true for $animal ? ');
      if(stdin.readLineSync() == 'yes'){
        head.yes = Node(question: animal);
        head.no = Node(question: head.question);
        head.addQuestion(newQuestion);
      }
      else{
        head.no = Node(question: animal);
        head.yes = Node(question: head.question);
        head.addQuestion(newQuestion);
      }

    }

    print('play again? ');
    if(stdin.readLineSync() != 'yes'){
      return true;
    }
    else {
      return false;
    }
  }


}

void main(){

  AnimalGame game = AnimalGame();
  bool isComplete = false;

  while(!isComplete){
    isComplete = game.playGame();
  }
}
