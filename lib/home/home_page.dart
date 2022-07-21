import 'package:flutter/material.dart';
import 'package:quiz/challenge/widgets/quiz_widget/quiz_widget.dart';
import 'package:quiz/home/widgets/level_button_widget/level_button_widget.dart';
import 'package:quiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'home_controller.dart';
import 'widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        user: controller.user!,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: 'Fácil',
                ),
                LevelButtonWidget(
                  label: 'Médio',
                ),
                LevelButtonWidget(
                  label: 'Difícil',
                ),
                LevelButtonWidget(
                  label: 'Perito',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 16,
                crossAxisSpacing: 8,
                crossAxisCount: 2,
                children: controller.quizzes!
                    .map(
                      (e) => QuizCardWidget(
                          title: e.title,
                          completed:
                              "${e.questionAnswered}/${e.question.length}"),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
