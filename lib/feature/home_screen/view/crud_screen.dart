import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_string/random_string.dart';

import '../../../repositories/database.dart';
import '../Widgets/widgets.dart';


class CrudScreen extends StatefulWidget {
  const CrudScreen({super.key});

  @override
  State<CrudScreen> createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title1: 'Flutter',
        title2: 'Crud'
        ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            crud(title: 'Name', controller: nameController),
            crud(title: 'Age', controller: ageController),
            crud(title: 'Location', controller: locationController),
            Center(
              child: ElevatedButton(
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child: Center(
                    child: Text('Add',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        )
                      ),
                    ),
                  )
                ),
                onPressed: ()  async {
                  String id = randomAlphaNumeric(10);
                  Map<String, dynamic> itemMap = {
                    'Name': nameController.text,
                    'Age': ageController.text,
                    'Location': locationController.text,
                  };
                  await DatabaseMethods().addItem(itemMap, id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}