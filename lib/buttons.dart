import 'package:flutter/material.dart';
    
    class MyButton  extends StatelessWidget {

      final color;
      final textColor;
      final String buttonText;

      const MyButton({super.key, this.color, this.textColor,
        required this.buttonText});

      @override
      Widget build(BuildContext context) {
        return Padding (
          padding: const EdgeInsets.all(8.0),
          child: ClipRect(
            child: Container(
              color: color,
              child: Center(child: Text(buttonText,
                style: TextStyle(color: textColor, fontSize: 20),

              ),
              ),
            ),
          ),
        );
      }
    }
    