import 'package:flutter/material.dart';

class ConsultList extends StatefulWidget {
  @override
  _ConsultListState createState() => _ConsultListState();
}
  
class _ConsultListState extends State<ConsultList> {
  @override 
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,  
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text('consult view')),    
    );
  }
}