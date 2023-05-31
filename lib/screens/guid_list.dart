import 'package:flutter/material.dart';
import 'package:tinkplus_handover_web/screens/home.dart';
import 'package:tinkplus_handover_web/services/guid_services.dart';

class GuidListScreen extends StatelessWidget {
  const GuidListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(flex: 1, child: HomeTopWidget()),
          Expanded(flex: 2, child: GuidLineListView())
        ],
      )),
    );
  }
}

class GuidLineListView extends StatefulWidget {
  const GuidLineListView({super.key});

  @override
  State<GuidLineListView> createState() => _GuidLineListViewState();
}

class _GuidLineListViewState extends State<GuidLineListView> {
  String showContent = "";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GuidService().guidList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('on Error ${snapshot}'),
            );
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              return SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: snapshot.data!.guid!.length,
                      itemBuilder: (context, index) {
                        var title = snapshot.data!.guid![index].title;
                        var content = snapshot.data!.guid![index].content;
                        /**이부분 부터 작업해야함 */
                        return Card(
                            child: Column(
                          children: [
                            ListTile(
                              title: Text("$title"),
                              onTap: () {
                                setState(() {
                                  showContent = "$content";
                                });
                              },
                            ),
                            ListTile(
                              subtitle: Text(
                                "$showContent",
                              ),
                            )
                          ],
                        ));
                      }));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Text("data");
            }
          }
        });
  }
}
