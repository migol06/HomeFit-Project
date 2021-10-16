class HFChestBeginner {
  String workoutTitle;
  String imagePath;
  String counts;

  HFChestBeginner(this.workoutTitle, this.imagePath, this.counts);

  static List<HFChestBeginner> data = [
    HFChestBeginner(
        "Jumping Jacks", "assets/images/chest/jumpingjacks.jpg", "20 secs"),
    HFChestBeginner("Incline push-ups",
        "assets/images/chest/inclinepush-ups.jpg", "16 reps"),
    HFChestBeginner(
        "Knee push-ups", "assets/images/chest/kneepush-ups.jpg", "12 reps"),
    HFChestBeginner("Push-ups", "assets/images/chest/push-ups.jpg", "10 reps"),
    HFChestBeginner("Wide arm push-ups",
        "assets/images/chest/widearmpush-ups.jpg", "10 reps"),
    HFChestBeginner(
        "Tricep Dips", "assets/images/chest/tricepdips.jpg", "10 reps"),
  ];
}
