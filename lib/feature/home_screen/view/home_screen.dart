import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crut/repositories/database.dart';

import '../Widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stream? itemStream;

  Widget getItems() {
    return StreamBuilder(
      stream: itemStream,
      builder: (context, snapshop) {
        return snapshop.hasData
            ? ListView.builder(
                itemCount: snapshop.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshop.data.docs[index];
                  return CrudCell(
                    name: ds['Name'],
                    age: ds['Age'],
                    location: ds['Location'],
                  );
                },
              )
            : SizedBox();
      },
    );
  }

  loadItems() async {
    itemStream = await DatabaseMethods().getItem();
    setState(() {});
  }

  @override
  void initState() {
    loadItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('crud_screen');
        },
      ),
      appBar: CustomAppbar(title1: 'Flutter', title2: 'Firebase'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(child: getItems()),
          ],
        ),
      ),
    );
  }
}
