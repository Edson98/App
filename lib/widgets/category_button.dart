import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryButton extends StatefulWidget {
  final String icon;
  final String text;
  bool isSelected;

  CategoryButton(
    this.text,
    {
    Key? key,
    this.icon = 'assets/coffee-svgrepo-com.svg',
    this.isSelected = false
  }) : super(key: key);

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(                  
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        elevation: 3.0,
        shadowColor: Colors.grey,
        primary: widget.isSelected ? Color(0xFF00512D) : Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0))
        )
      ),
      onPressed: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      }, 
      icon: SvgPicture.asset(
       widget.icon,
        height: 20,
        color: widget.isSelected ? Colors.white : Color(0xFF00512D),
      ),
      //Icon(widget.icon, color: widget.isSelected ? Colors.white : Color(0xFF00512D),), 
      label: Text(widget.text, style: TextStyle(color: widget.isSelected ? Colors.white : Color(0xFF00512D)),)
    );
  }
}