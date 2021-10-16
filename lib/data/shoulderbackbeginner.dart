class HFShoulderBackBeginner {
  String workoutTitle;
  String imagePath;
  String counts;

  HFShoulderBackBeginner(this.workoutTitle, this.imagePath, this.counts);

  static List<HFShoulderBackBeginner> data = [
    HFShoulderBackBeginner("Jumping Jacks",
        "assets/images/shoulder&back/jumpingjacks.jpg", "20 secs"),
    HFShoulderBackBeginner(
        "Arm Raises", "assets/images/shoulder&back/armraises.jpg", "16 secs"),
    HFShoulderBackBeginner("Arm Scissors",
        "assets/images/shoulder&back/armscissors.jpg", "30 secs"),
    HFShoulderBackBeginner("Side arm raise",
        "assets/images/shoulder&back/sidearmraise.jpg", "14 reps"),
    HFShoulderBackBeginner("Knee push-ups",
        "assets/images/shoulder&back/kneepush-ups.jpg", "12 reps"),
    HFShoulderBackBeginner("Rhomboid Pulls",
        "assets/images/shoulder&back/rhomboidpulls.jpg", "14 reps"),
  ];
}
