import 'dart:io';
import 'data.dart';

class Node {
  Node yes;
  Node no;
  String question;
  String animal;

  Node({this.animal, this.question, this.yes, this.no});
}



startTheGame() {
  Node head = Node();
  head.question = 'Can you fly';
  head.yes = Node();
  head.no = Node();
  head.yes.animal = 'duck';
  head.no.animal = 'monkey';

  runningTheGame(head);
}

runningTheGame(Node current) {

    if (current.animal == null) {
      print(current.question);
      String input1 = stdin.readLineSync();
      if(input1 == 'y'){
        current = current.yes;
        runningTheGame(current);
      }
      else{
        current = current.no;
        runningTheGame(current);
      }
    } else {
      print('is it ${current.animal} ?');
      if(stdin.readLineSync() == 'n'){
        print('what is your animal? ');
        String animal = stdin.readLineSync();
        print('distinctive ques? for which its true for $animal ? ');
        String question = stdin.readLineSync();
        Node current = Node();
        String wrongAnimal = current.animal;
        current.yes = Node();
        current.no = Node();
        current.question = question;
        current.yes.animal = animal;
        current.no.animal = wrongAnimal;
      }
      else {
        print('completed.');
      }
    }
    return current;

  }

main(){
  Node head = Node(question: 'Can you fly?');
  head.yes.animal = 'duck';
  head.no.animal = 'monkey';

  print('think of an animal');
  Node node = head;
  while(node.question != null){
    print(node.question);
    if(stdin.readLineSync() == 'y'){
      node = node.yes;
    }
    else {
      node = node.no;
    }
  }
  print('is it a ${node.animal}');
  if(stdin.readLineSync() == 'n'){
    
  }

}
//main() {
//  Map<String,dynamic> json =  {
//  "data": "Can you fly",
//  "yes": {
//  "data": "duck "
//  },
//  "no": {
//  "data": "monkey "
//  }};
//  Questions questionsData = Questions.fromJson(json);
//
//
//
//
//
//
//  startTheGame();
//}
