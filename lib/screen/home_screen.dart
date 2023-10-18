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
          title: const Text(
            "App Bar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
        ),
        body: ListView.builder(itemCount: Global.g1.studentList.length,
            itemBuilder: (context, index) {
              return Container(
                            margin: const EdgeInsets.all(5),
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
                                          "${Global.g1.studentList[index]['grid']}",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${Global.g1.studentList[index]['Name']}",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${Global.g1.studentList[index]['std']}",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              Navigator.pushNamed(context, 'edit');
                                            });
                                          }, icon: const Icon(Icons.edit)),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              Global.g1.studentList.remove(Global.g1.studentList[index]);
                                            });
                                          }, icon: const Icon(Icons.delete)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
            },),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'edit').then(
              (value) {
                setState(() {});
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
