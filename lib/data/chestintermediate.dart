class HFChestIntermediate {
  String workoutTitle;
  String imagePath;
  String counts;

  HFChestIntermediate(this.workoutTitle, this.imagePath, this.counts);

  static List<HFChestIntermediate> data = [
    HFChestIntermediate(
        "Jumping Jacks", "assets/images/chest/jumpingjacks.jpg", "30 secs"),
    HFChestIntermediate(
        "Knee push-ups", "assets/images/chest/kneepushups.jpg", "12 reps"),
    HFChestIntermediate(
        "Push Ups", "assets/images/chest/pushups.jpg", "12 reps"),
    HFChestIntermediate("Wide arm Push-ups",
        "assets/images/chest/widearmpushups.jpg", "15 reps"),
    HFChestIntermediate("Decline push-ups",
        "assets/images/chest/declinepushups.jpg", "12 reps"),
    HFChestIntermediate("Staggered Push-ups",
        "assets/images/chest/staggeredpushups.jpg", "12 reps"),
    HFChestIntermediate("Shoulder Stretch",
        "assets/images/chest/shoulderstretch.jpg", "30 secs"),
  ];
}
