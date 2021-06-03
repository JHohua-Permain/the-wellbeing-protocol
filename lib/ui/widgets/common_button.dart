import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CommonButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          color: Color(0xFF801E48),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: MaterialButton(
            minWidth: 200.0,
            height: 50,
            color: const Color(0xFFFFAD8B),
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
