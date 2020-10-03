import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Address to get the data
  var url = "https://ivyhacks2020.us-south.cf.appdomain.cloud/80655ec-04f2-11eb-adc1-0242ac120002221250";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: data != null
          ? ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: data[index]["title"],
              );
            },
            itemCount: data.length,)
          : Center(
              child: CircularProgressIndicator()
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.send),
      ),
    );
  }
}