import 'package:edu_tools/app_styles.dart';
import 'package:flutter/material.dart';
class HomeMettingButton extends StatelessWidget {

  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const HomeMettingButton({Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onPressed,
      child: Column(
        children: [
          Container(

              margin: EdgeInsets.only(
                  top: 15 ), //bottom: 8, right: 12
            decoration: BoxDecoration(

              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.06),
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            width: 60,
            height: 60,
            child: Icon(icon, color: Colors.white,size: 30,)

          ),

          const SizedBox(height: 10),
          Text(text, style: const TextStyle(color: Colors.grey,),)

        ],
      ),
    );

  }
}
