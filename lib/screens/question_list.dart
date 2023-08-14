import 'package:flutter/material.dart';
import 'package:tinkplus_handover_web/screens/home.dart';
import 'package:tinkplus_handover_web/services/question_services.dart';
import 'package:tinkplus_handover_web/utils/Typografie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuestionListScreen extends StatelessWidget {
  const QuestionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(flex: 1, child: HomeTopWidget()),
          Expanded(flex: 2, child: QuestionListView()),
          SizedBox(
            height: 50,
          )
        ],
      )),
    );
  }
}

class QuestionListView extends StatefulWidget {
  const QuestionListView({super.key});

  @override
  State<QuestionListView> createState() => _QuestionListViewState();
}

class _QuestionListViewState extends State<QuestionListView> {
  String showQuestion = "";
  String showAnswer = "";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return FutureBuilder(
        future: QuestionService().guidList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('on Error ${snapshot}'),
            );
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              return SizedBox(
                  width: width * .9,
                  height: MediaQuery.of(context).size.width,
                  child: width > 700
                      ? Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ListView.builder(
                                      itemCount:
                                          snapshot.data!.questionList!.length,
                                      itemBuilder: (context, index) {
                                        var question = snapshot.data!
                                            .questionList![index].question;
                                        var answer = snapshot
                                            .data!.questionList![index].answer;
                                        /**이부분 부터 작업해야함 */
                                        return Card(
                                            child: Column(
                                          children: [
                                            ListTile(
                                              title: Row(
                                                children: [
                                                  Typografie().labelMedium(
                                                      "$question",
                                                      Colors.black),
                                                  const Icon(
                                                    Icons
                                                        .question_answer_outlined,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  showQuestion = "$question";
                                                  showAnswer = "$answer";
                                                });
                                              },
                                            ),
                                          ],
                                        ));
                                      }),
                                )),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            width: 1, color: Colors.black38)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, top: 10),
                                              child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    children: [
                                                      Typografie().labelLarge(
                                                          showQuestion,
                                                          Colors.black),
                                                      Icon(Icons
                                                          .question_answer_rounded)
                                                    ],
                                                  )),
                                            )),
                                        Expanded(
                                            flex: 5,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 10,
                                                  right: 20),
                                              child: Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Typografie()
                                                      .labelMedium(showAnswer,
                                                          Colors.black)),
                                            )),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        )
                      : Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ListView.builder(
                                      itemCount:
                                          snapshot.data!.questionList!.length,
                                      itemBuilder: (context, index) {
                                        var question = snapshot.data!
                                            .questionList![index].question;
                                        var answer = snapshot
                                            .data!.questionList![index].answer;
                                        /**이부분 부터 작업해야함 */
                                        return Card(
                                            child: Column(
                                          children: [
                                            ListTile(
                                              title: Row(
                                                children: [
                                                  Typografie().labelSamll(
                                                      "$question",
                                                      Colors.black),
                                                  const Icon(
                                                    Icons
                                                        .question_answer_outlined,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  showQuestion = "$question";
                                                  showAnswer = "$answer";
                                                });
                                              },
                                            ),
                                          ],
                                        ));
                                      }),
                                )),
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            width: 1, color: Colors.black38)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, top: 10),
                                              child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    children: [
                                                      Typografie().labelSamll(
                                                          showQuestion,
                                                          Colors.black),
                                                      Icon(Icons
                                                          .question_answer_rounded)
                                                    ],
                                                  )),
                                            )),
                                        Expanded(
                                            flex: 5,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 10,
                                                  right: 20),
                                              child: Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Typografie()
                                                      .labelSamll(showAnswer,
                                                          Colors.black)),
                                            )),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Text("data");
            }
          }
        });
  }
}
