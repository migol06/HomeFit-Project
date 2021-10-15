class HFChestBeginner {
  String label;
  String imageUrl;
  String counts;

  HFChestBeginner(this.label, this.imageUrl, this.counts);

  static List<HFChestBeginner> chest = [
    HFChestBeginner(
        "Jumping Jacks", "assets/images/chest/jumpingjacks.jpg", "20 secs")
  ];
}
