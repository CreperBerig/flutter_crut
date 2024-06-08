import 'package:flutter/material.dart';
import 'package:flutter_crut/feature/home_screen/Widgets/appbar.dart';
import 'package:flutter_crut/feature/home_screen/Widgets/new_crud.dart';

class CrudAlert extends StatelessWidget {
  const CrudAlert({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = new TextEditingController();
    TextEditingController ageController = new TextEditingController();
    TextEditingController locationController = new TextEditingController();
    return Container(
      child: Column(
        children: [
          Row(children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.cancel),
            ),
            CustomAppbar(title1: "Edit", title2: "Detalis"),
        ],),
        crud(title: "Name", controller:  nameController),
        crud(title: "Age", controller:  ageController),
        crud(title: "Location", controller:  locationController),
        ElevatedButton(
          onPressed: () async {
            Map<String, dynamic> updateData = {
              'name': nameController.text,
              'age': ageController.text,
              'location': ageController.text,
              // 'id': id
            };
            
          },
          child: Text("Edit"),
        )
        ],
      ),
    );
  }
}