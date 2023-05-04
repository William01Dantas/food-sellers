import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: const [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.amber),
            strokeWidth: 5,
          ),
        ],
      ),
    );
  }
}
