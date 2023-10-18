import 'package:examproject_app/util/global.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController txtgrid= TextEditingController();
  TextEditingController txtname= TextEditingController();
  TextEditingController txtstd= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Data Student",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
        ),
        body: SizedBox(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              TextFormField(
                controller: txtgrid,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    fillColor: Colors.blue.shade50,
                    hintText: "Enter grid",
                    filled: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtname,
                keyboardType: TextInputType.name,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    fillColor: Colors.blue.shade50,
                    hintText: "Enter Name",
                    filled: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtstd,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    fillColor: Colors.blue.shade50,
                    hintText: "Enter std",
                    filled: true,
                    border: InputBorder.none),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Map m1={
                    "grid":txtgrid.text,
                    "Name":txtname.text,
                    "std":txtstd.text,
                  };
                  Global.g1.studentList.add(m1);
                  Navigator.pop(context, [txtgrid.text, txtname.text,txtstd.text]);
                },
                child: Text("submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
