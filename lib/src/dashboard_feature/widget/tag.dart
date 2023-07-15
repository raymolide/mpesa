import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';

class Tag extends StatelessWidget {
  final String tag;
  final IconData icon;
  final bool active;
  const Tag(
      {super.key, required this.tag, required this.icon, required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: active ? primary : Colors.white,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              color: active ? primary : Colors.white,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      icon,
                      color: active ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    tag,
                    style: TextStyle(
                        color: active ? Colors.white : Colors.black,
                        fontWeight: active ? FontWeight.bold : null),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
