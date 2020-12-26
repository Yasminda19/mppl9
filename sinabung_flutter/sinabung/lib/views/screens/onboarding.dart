import 'package:flutter/material.dart';
import 'package:sinabung/views/partials/onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController;
  int currentIndex = 0;

  static const _kDuration = const Duration(microseconds: 300);
  static const _kCurve = Curves.ease;
  static const Color _kIndicatorBackgroundColor = Color(0xFFE7F9FF);
  static const Color _kIndicatorColor = Color(0xFFB6E5F1);

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void nextPage() {
    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }

  List<Widget> buildIndicators(int n) {
    List<Widget> indicators = List<Widget>();
    for (var i = 0; i < n; i++) {
      indicators.add(
        DecoratedBox(
          decoration: BoxDecoration(
            color: currentIndex == i ? _kIndicatorColor : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: SizedBox(height: 12, width: 80.0 / n),
        ),
      );
    }
    return indicators;
  }

  @override
  void initState() {
    super.initState();
    this._pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: onPageChanged,
            controller: _pageController,
            children: [
              OnBoardingPage(
                title: "Transaksi",
                body:
                    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
                imgPath: "assets/images/onboarding1.png",
              ),
              OnBoardingPage(
                title: "Analisis",
                body:
                    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
                imgPath: "assets/images/onboarding2.png",
              ),
              OnBoardingPage(
                title: "Menabung",
                body:
                    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
                imgPath: "assets/images/onboarding3.png",
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: _kIndicatorBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: SizedBox(
                height: 12,
                width: 80,
                child: Row(children: buildIndicators(3)),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: RaisedButton(
              color: Color(0xFF202944),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                if (currentIndex != 2)
                  nextPage();
                else
                  Navigator.of(context).pushNamed("/auth");
              },
              child: Text("Selanjutnya", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
