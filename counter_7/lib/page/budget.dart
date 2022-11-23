import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:flutter/material.dart';

class MyBudgetPage extends StatefulWidget {
  const MyBudgetPage({super.key});

  @override
  State<MyBudgetPage> createState() => _MyBudgetPageState();
}

class Database {
  String? judul;
  String? nominal;
  String? jenis;

  Database(String this.judul, String this.nominal, String this.jenis);
}

class _MyBudgetPageState extends State<MyBudgetPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );},),

            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );},),

            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                );},),

            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );},),
          ],),),
          
      body: Form(child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              for (var data in database)
              Padding(padding: const EdgeInsets.all(4.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.1),
                  borderRadius: BorderRadius.circular(6)
                ),

                title: Padding(padding: const EdgeInsets.all(5.0),
                  child: Text(
                  data.judul.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                ),

                subtitle: Padding(padding: const EdgeInsets.all(5.0),
                  child: Text(data.nominal.toString()),
                ),
                trailing: Padding(padding: const EdgeInsets.all(5.0),
                child: 
                  Text(
                  data.jenis.toString(),
                  style: const TextStyle(fontSize: 15),
                ),
                )
              ),
              )
            ],
          ),
          )
        ),)
    );
  }
}
