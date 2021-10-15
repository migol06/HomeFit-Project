class HFChestAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFChestAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFChestAdvance> data = [
    HFChestAdvance(
        "Jumping Jacks", "assets/images/chest/jumpingjacks.jpg", "30 secs"),
    HFChestAdvance("Spiderman push-ups",
        "assets/images/chest/spidermanpushup.jpg", "12 reps"),
    HFChestAdvance("Shoulder stretch",
        "assets/images/chest/shoulderstretch.jpg", "30 secs"),
    HFChestAdvance("Staggered Push-ups",
        "assets/images/chest/staggeredpushups.jpg", "16 reps"),
    HFChestAdvance(
        "Diamond push-ups", "assets/images/chest/diamondpushup.jpg", "16 reps"),
    HFChestAdvance("Decline Push-ups", "assets/images/chest/declinepushups.jpg",
        "12 reps"),
    HFChestAdvance(
        "Wide Push-ups", "assets/images/chest/widearmpushups.jpg", "16 reps"),
    HFChestAdvance(
        "Box Push-ups", "assets/images/chest/boxpushups.jpg", "16 reps"),
  ];
}
