import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyTextField extends StatefulWidget {
  final String? title;
  final bool? isDate;
  final TextEditingController? controller;

  const MyTextField({
    super.key,
    required this.title,
    required this.isDate,
    required this.controller,
  });
  
  get context => null;

  @override
  State<MyTextField> createState() => _MyTextFieldState();

  
  Future<DateTime?> showDatePickere({
    required context, 
    required DateTime firstDate,
     required DateTime lastDate, 
     required DateTime initialDate}) async {
    return null;
  }
  
  void setState(Null Function() param0) {}
}

class _MyTextFieldState extends State<MyTextField> {
  DateTime? selectedDate;
  TextEditingController? _controller; 
  var maskdate = MaskTextInputFormatter(
    mask: "##/##/####",
    filter: {"#": RegExp(r'0-9')},
  );
  
  VoidCallback? get _selectDate => null;

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      inputFormatters: (widget.isDate!) ? [maskdate] : [],
      controller: _controller,
      decoration: InputDecoration(
        label: Text(widget.title!),
        border: OutlineInputBorder(),
        suffixIcon: (widget.isDate!)
            ? IconButton(
                onPressed: _selectDate,
                icon: Icon(Icons.calendar_month),
              )
            : null,
      ),
    );
  }
}
