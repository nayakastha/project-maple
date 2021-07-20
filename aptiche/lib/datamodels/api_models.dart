class Question {
  Question({
    required this.questionId,
    required this.question,
    required this.url,
    required this.options,
    required this.answer,
    required this.positiveMark,
    required this.negativeMark,
    required this.explanation,
  });

  String questionId;
  String question;
  String url;
  dynamic options;
  String answer;
  dynamic positiveMark;
  dynamic negativeMark;
  String explanation;
}

class Quiz {
  Quiz(
      {required this.quizId,
      required this.name,
      required this.startTime,
      required this.endTime,
      required this.questions,
      required this.instructions,
      // required this.description,
      // required this.submissions,
      required this.active});

  final String? quizId;
  final String? name;
  final DateTime startTime;
  final DateTime endTime;
  final List<Question> questions; // string - questionId
  final List<String> instructions;
  // final String description;
  // final dynamic submissions; // string - userId, int - score
  final bool active;

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      quizId: json['id'] as String,
      name: json['name'] as String,
      startTime: json['startTime'] as DateTime,
      endTime: json['endTime'] as DateTime,
      questions: json['questions'] as List<Question>,
      instructions: json['instructions'] as List<String>,
      active: json['active'] as bool,
    );
  }
}

class UserInput {
  UserInput(
      {required this.uId,
      required this.fcmTokens,
      required this.name,
      required this.email,
      required this.phoneNo,
      required this.rollNo,
      required this.quizList});

  final String? uId;
  final String? fcmTokens;
  final String? name;
  final String? email;
  final String? phoneNo;
  final String? rollNo;
  final List<String>? quizList;
}
