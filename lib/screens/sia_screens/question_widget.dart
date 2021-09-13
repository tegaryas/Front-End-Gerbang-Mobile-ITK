import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class QuestionWidgets extends StatefulWidget {
  final List answerList;
  final String question;
  final int questionNumber;
  final ValueChanged<String> onChanged;

  QuestionWidgets({
    Key key,
    @required this.answerList,
    @required this.question,
    this.onChanged,
    @required this.questionNumber,
  }) : super(key: key);

  @override
  _QuestionWidgetsState createState() => _QuestionWidgetsState();
}

class _QuestionWidgetsState extends State<QuestionWidgets> {
  int selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.questionNumber.toString() + '.',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomText(
                    text: '${widget.question}',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ...List.generate(
                  widget.answerList.length,
                  (index) {
                    var answer = widget.answerList[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAnswerIndex = index;
                        });
                        widget.onChanged(answer.toString());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      style: BorderStyle.solid,
                                      color: primaryColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: selectedAnswerIndex == index
                                      ? Container(
                                          margin: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            shape: BoxShape.circle,
                                          ),
                                        )
                                      : Container(),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: CustomText(
                                    text: answer,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ));
  }
}
