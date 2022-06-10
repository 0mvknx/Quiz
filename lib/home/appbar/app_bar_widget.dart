import 'package:flutter/material.dart';
import 'package:quiz/core/app_gradients.dart';
import 'package:quiz/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                        text: ("Olá, "),
                        style: AppTextStyles.title,
                        children: [
                          TextSpan(
                              text: ("Marcos Vinicios."),
                              style: AppTextStyles.titleBold),
                        ]),
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://avatars.githubusercontent.com/u/107013353?v=4"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}