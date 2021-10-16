class HFShoulderBackAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFShoulderBackAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFShoulderBackAdvance> data = [
    HFShoulderBackAdvance("Jumping Jacks",
        "assets/images/shoulder&back/jumpingjacks.jpg", "30 secs"),
    HFShoulderBackAdvance("Hyper Extension",
        "assets/images/shoulder&back/hyperextension.jpg", "14 reps"),
    HFShoulderBackAdvance("Pike push-ups",
        "assets/images/shoulder&back/pikepushups.jpg", "14 reps"),
    HFShoulderBackAdvance("Supine push-ups",
        "assets/images/shoulder&back/supinepushup.jpg", "16 reps"),
    HFShoulderBackAdvance("Reverse Snow Angels",
        "assets/images/shoulder&back/reversesnowangels.jpg", "14 reps"),
    HFShoulderBackAdvance("Floor Tricep dips",
        "assets/images/shoulder&back/floortricepdips.jpg", "20 reps"),
    HFShoulderBackAdvance("Tricep kickback",
        "assets/images/shoulder&back/tricepkickbacks.jpg", "16 reps"),
    HFShoulderBackAdvance("Hover push-ups",
        "assets/images/shoulder&back/hoverpushup.jpg", "16 reps"),
    HFShoulderBackAdvance(
        "Inchworm", "assets/images/shoulder&back/inchworms.jpg", "12 reps"),
  ];
}
