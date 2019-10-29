import 'dart:io';
import 'data.dart';

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
      print('question thats true about $animal and false about ${head.question}');
      String newQuestion = stdin.readLineSync();
      head.yes = Node(question: animal,yes:null,no:null);
      head.no = Node(question: head.question,yes: null,no: null);
      head.addQuestion(newQuestion);
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
