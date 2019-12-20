class Lessonsmodel {
  String lesson_name;
  // ignore: non_constant_identifier_names
  int target_question_count ;
  int solved_questions;
  // double question_percent = (solved_questions/target_question_count)*100;
  int start_time;


  Lessonsmodel(this.lesson_name,this.target_question_count,this.solved_questions,this.start_time);
  Lessonsmodel.empty();

  Lessonsmodel.dynamicval(dynamic v){
    this.lesson_name=v['lessonName'];
    this.solved_questions=v['solvedquesiton'];
    this.target_question_count=v['targetQuestionCount'];
    //this.question_percent=v['questionpercent'];
    this.start_time=v['startTime'];
  }

  toJson(){
    return{
      "lessonName":lesson_name,
      "solvedquesiton":solved_questions,
      "targetQuestionCount":target_question_count,
      "starTime":start_time,
    };
  }
  String get lessonName => lesson_name;
  set lessonName(String value){
    lesson_name=value;
  }

  int get solvedquestion => solved_questions;
  set solvedquestion(int value){
    solved_questions=value;
  }

  int get targetQuestionCount => target_question_count;
  set targetQuestionCount(int value){
    target_question_count=value;
  }

  int get startTime => start_time;
  set startTime(int value){
    start_time=value;
  }


}

