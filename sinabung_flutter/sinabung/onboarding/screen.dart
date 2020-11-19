import 'package:flutter/material.dart';
import 'model.dart';
import 'tiles.dart';

class OnBoardingScreen extends StatefulWidget {
@override
_OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  List<OnBoardingModel> onBoardingPages;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    onBoardingPages = getOnBoardingPages();
  }

  Widget pageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.symmetric(horizontal: 2),
      height: isCurrentPage ? 15 : 10,
      width: isCurrentPage ? 15 : 10,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.cyan : Color(0xffc4c4c4),
          borderRadius: BorderRadius.circular(17)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262833),
      body: PageView.builder(
          controller: pageController,
          onPageChanged: (nextPage) {
            setState(() {
              currentIndex = nextPage;
            });
          },
          itemCount: onBoardingPages.length,
          itemBuilder: (context, index) {
            return OnBoardingTile(
                imageAssetPath: onBoardingPages[index].getImagePath(),
                title: onBoardingPages[index].getTitle(),
                desc: onBoardingPages[index].getDesc());
          }),
      bottomSheet: Container(
        color: Color(0xff262833),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(onPressed: null, child: null),
            Row(
              children: <Widget>[
                for (int i = 0; i < onBoardingPages.length; i++)
                  GestureDetector(
                      child: pageIndicator(i == currentIndex),
                      onTap: () {
                        pageController.animateToPage(i,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.ease);
                      })
              ],
            ),
            FlatButton(
                onPressed: null,
                child: Text(
                  currentIndex == onBoardingPages.length - 1
                      ? "Selanjutnya"
                      : "Lewati",
                  style: TextStyle(color: Color(0xFF4ACFAC)),
                ))
          ],
        ),
      ),
    );
  }
}