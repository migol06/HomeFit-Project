class HFArmsAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFArmsAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFArmsAdvance> data = [
    HFArmsAdvance(
        "Jumping Jacks", "assets/images/arms/jumpingjacks.jpg", "30 secs"),
    HFArmsAdvance("Floor Triceps dips",
        "assets/images/arms/floortricepdips.jpg", "18 reps"),
    HFArmsAdvance("Military Push-ups", "assets/images/arms/militarypushups.jpg",
        "14 reps"),
    HFArmsAdvance("Leg Barbell Curl Left",
        "assets/images/arms/legbarbellcurlleft.jpg", "16 reps"),
    HFArmsAdvance("Leg Barbell Curl Right",
        "assets/images/arms/legbarbellcurlright.jpg", "16 reps"),
    HFArmsAdvance("Doorway Curls Right",
        "assets/images/arms/doorwaycurlsright.jpg", "12 reps"),
    HFArmsAdvance("Doorway Curls Left",
        "assets/images/arms/doorwaycurlsleft.jpg", "12 reps"),
    HFArmsAdvance("Standing Biceps Stretch left",
        "assets/images/arms/standingbicepsstretchleft.jpg", "30 secs"),
    HFArmsAdvance("Standing Biceps Stretch Right",
        "assets/images/arms/standingbicepsstretchrigth.jpg", "30 secs"),
  ];
}
