import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        // 버튼 스타일링 예시
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.orange),
        //     foregroundColor: MaterialStateProperty.all(Colors.white)),
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.white,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
