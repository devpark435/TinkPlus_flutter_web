class QuestionModel {
  List<Question>? questionList;

  QuestionModel({this.questionList});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    if (json['questionList'] != null) {
      questionList = <Question>[];
      json['questionList'].forEach((v) {
        questionList!.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questionList != null) {
      data['question'] = this.questionList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Question {
  String? question;
  String? category;
  String? image;
  String? answer;

  Question({this.question, this.category, this.image, this.answer});

  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    category = json['category'];
    image = json['image'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['category'] = this.category;
    data['image'] = this.image;
    data['answer'] = this.answer;
    return data;
  }
}
