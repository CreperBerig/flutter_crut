import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrudCell extends StatelessWidget {
  final String name, age, location;
  const CrudCell({
    super.key,
    required this.name,
    required this.location,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Name: ${name}',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              Text('Age: ${age}',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              Text('Location: ${location}',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
            ],),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.orange,
                )
              ),
              IconButton(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.orange,
                )
              )
            ],)
        ],
      ),
    );
  }
}