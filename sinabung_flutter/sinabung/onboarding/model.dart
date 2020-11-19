class OnBoardingModel {
  String imagePath, title, desc;

  OnBoardingModel(String imagePath, String title, String desc) {
    this.imagePath = imagePath;
    this.title = title;
    this.desc = desc;
  }

  String getImagePath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<OnBoardingModel> getOnBoardingPages() {
  List<OnBoardingModel> pages = new List<OnBoardingModel>();

  OnBoardingModel page = new OnBoardingModel(
    "assets/onboard5.png",
    "Transaksi",
    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
  );
  pages.add(page);

  page = new OnBoardingModel(
    "assets/onboard7.png",
    "Analisis",
    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
  );
  pages.add(page);

  page = new OnBoardingModel(
    "assets/onboard8.png",
    "Menabung",
    "Habis membeli makanan favoritmu. Berapa uang yang kamu masih punya hari ini? Catat transaksimu seperti pemasukkan dan pengeluaran di sinabung",
  );
  pages.add(page);

  return pages;
}
