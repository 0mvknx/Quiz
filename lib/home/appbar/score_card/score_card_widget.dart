import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text("Vamos Começar"),
                Text("Complete os desafios e avançe em conhecimento."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
