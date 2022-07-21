import 'package:quiz/core/core.dart';
import 'package:quiz/home/home_state.dart';
import 'package:quiz/shared/models/awnser_model.dart';
import 'package:quiz/shared/models/question_model.dart';
import 'package:quiz/shared/models/quiz_model.dart';
import 'package:quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: "Marcos Vinicios",
        photoUrl: "https://avatars.githubusercontent.com/u/107013353?v=4");
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          question: [
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
          imagem: AppImages.blocks,
          level: Level.facil)
    ];
  }
}
