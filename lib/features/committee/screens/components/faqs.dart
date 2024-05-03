// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ghfmun/models/faqs_model.dart';
import 'package:ghfmun/common/logoContainer.dart';
import '../../../../common/navigation_bar.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const NavigationBarWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        "Frequently Asked Question",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: faqsModel.length,
                        itemBuilder: (BuildContext context, index) {
                          return CustomExpansionTile(
                            title: faqsModel[index].question,
                            content: faqsModel[index].answer,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: screenSize.height * 0,
              left: screenSize.width * 0.1,
              child: LogoContainer(
                height: screenSize.height * 0.2,
                width: screenSize.height * 0.17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String content;

  const CustomExpansionTile(
      {super.key, required this.title, required this.content});

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Card(
          elevation: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isExpanded
                  ? Colors.white
                  : const Color.fromARGB(
                      255,
                      245,
                      244,
                      244,
                    ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 48.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: isExpanded ? Colors.blue : Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        isExpanded ? Icons.expand_less : Icons.expand_more,
                      ),
                    ],
                  ),
                ),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 200),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  firstChild: const SizedBox(height: 0, width: 0),
                  secondChild: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                            width: 1.0, color: Theme.of(context).dividerColor),
                        right: BorderSide(
                            width: 1.0, color: Theme.of(context).dividerColor),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            widget.content,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
