class QnA{

  final int id;
  final String question;
  final String answer;

  QnA({this.id,this.question,this.answer});

  factory QnA.fromJson(Map<String,dynamic> mp){
        return QnA(
            id:mp['id'],
            question:mp['question'],
            answer:mp['answer']

        );
    }
}