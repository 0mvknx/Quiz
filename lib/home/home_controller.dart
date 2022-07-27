import 'package:flutter/cupertino.dart';
import 'package:quiz/core/core.dart';
import 'package:quiz/home/home_state.dart';
import 'package:quiz/shared/models/awnser_model.dart';
import 'package:quiz/shared/models/question_model.dart';
import 'package:quiz/shared/models/quiz_model.dart';
import 'package:quiz/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Marcos Vinicios",
        photoUrl: "https://avatars.githubusercontent.com/u/107013353?v=4");
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        level: Level.facil,
        question: [
          QuestionModel(
            title: "Está curtindo o flutter ?",
            awnsers: [
              AwnserModel(title: "Estou curtindo !"),
              AwnserModel(title: "Tá maneiro !"),
              AwnserModel(title: "Esta legal !"),
              AwnserModel(title: "Esta show de bilhete !", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o flutter ?",
            awnsers: [
              AwnserModel(title: "Estou curtindo !"),
              AwnserModel(title: "Tá maneiro !"),
              AwnserModel(title: "Esta legal !"),
              AwnserModel(title: "Esta show de bilhete !", isRight: true),
            ],
          )
        ],
      )
    ];
    state = HomeState.sucess;
  }
}
