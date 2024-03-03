

import 'package:flutter/material.dart';

class FAQs extends StatelessWidget {
  final title;
  final content;

  const FAQs({super.key , this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ExpansionTile(
        backgroundColor: Color(Colors.white.value),
        title: Text(title),
        children: [ 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content),
          ),
        ],
      ),
    );
  }
}