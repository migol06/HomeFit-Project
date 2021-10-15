class HFShoulderBackAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFShoulderBackAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFShoulderBackAdvance> data = [
    HFShoulderBackAdvance("Jumping Jacks",
        "assets/images/shoulder&back/jumpingjacks.jpg", "30 secs"),
    HFShoulderBackAdvance("Hyper Extension",
        "assets/images/shoulder&back/armraises.jpg", "14 reps"),
    HFShoulderBackAdvance("Pike push-ups",
        "assets/images/shoulder&back/armscissors.jpg", "14 reps"),
    HFShoulderBackAdvance("Supine push-ups",
        "assets/images/shoulder&back/sidearmraise.jpg", "16 reps"),
    HFShoulderBackAdvance("Reverse Snow Angels",
        "assets/images/shoulder&back/kneepush-ups.jpg", "14 reps"),
    HFShoulderBackAdvance("Floor Tricep dips",
        "assets/images/shoulder&back/rhomboidpulls.jpg", "20 reps"),
    HFShoulderBackAdvance("Tricep kickback",
        "assets/images/shoulder&back/rhomboidpulls.jpg", "16 reps"),
    HFShoulderBackAdvance("Hover push-ups",
        "assets/images/shoulder&back/rhomboidpulls.jpg", "16 reps"),
    HFShoulderBackAdvance(
        "Inchworm", "assets/images/shoulder&back/rhomboidpulls.jpg", "12 reps"),
  ];
}
