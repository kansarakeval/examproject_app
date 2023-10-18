import 'package:examproject_app/util/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "App Bar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
        ),
        body: ListView(
          children: [
            Column(
              children: Global.g1.studentList
                  .map(
                    (e) => Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "${e['grid']}",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Text(
                                "${e['Name']}",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Text(
                                "${e['std']}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.edit)),
                            SizedBox(
                              width: 40,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    Global.g1.studentList.remove(e);
                                  });
                                }, icon: Icon(Icons.delete)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'edit').then(
              (value) {
                setState(() {});
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
