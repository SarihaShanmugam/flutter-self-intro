import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SelfIntroduction extends StatefulWidget {
  const SelfIntroduction({super.key});

  @override
  State<SelfIntroduction> createState() => _SelfIntroductionState();
}

var text =
'\nHi Myself sariha.I completed my bachelor degree at shri anglamman college of engg and technology.\nI have 3 years experience in banking domain.\nAfter got married, i have to took an intentional pause to focus on caregiving for my family and children\s. \nNow i am planning to resume my career.\nSo i have done certification courses in java_selenium and flutter. \nAlso i am doing upgrade my knowledge towards my career.';
class _SelfIntroductionState extends State<SelfIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Self Introduction',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          child: ListTile(
            title: Text(
              text,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
            onLongPress: () {
              Share.share(text);
            },
          ),
        ),
      ),
    );
  }
}
