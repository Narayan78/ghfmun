import 'package:flutter/material.dart';
import 'package:ghfmun/common/navigation_bar.dart';
import '../../../common/logo_container.dart';

class LearnMore extends StatelessWidget {
  const LearnMore({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    void scrollToTop() {
      scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(eccentricity: 0.2),
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.arrow_upward,
              size: 25,
            ),
            onPressed: () {
              scrollToTop();
            }),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            children: [
              Column(
                children: [
                  const NavigationBarWidget(),
                  cardImage("assets/purposal/001.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/002.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/003.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/004.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/005.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/006.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/007.jpg", size),
                  const SizedBox(
                    height: 5,
                  ),
                  cardImage("assets/purposal/008.jpg", size),
                ],
              ),
              Positioned(
                top: size.height * 0,
                left: size.width * 0.1,
                child: LogoContainer(
                  height: size.height * 0.18,
                  width: size.height * 0.17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding cardImage(String imageUrl, Size size) {
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.06, right: size.width * 0.06),
      child: Card(
        shadowColor: Colors.blue,
        elevation: 300,
        child: Image.asset(
          imageUrl,
        ),
      ),
    );
  }
}
