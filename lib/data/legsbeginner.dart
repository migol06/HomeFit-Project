class HFLegsBeginner {
  String workoutTitle;
  String imagePath;
  String counts;

  HFLegsBeginner(this.workoutTitle, this.imagePath, this.counts);

  static List<HFLegsBeginner> data = [
    HFLegsBeginner(
        "Jumping Jacks", "assets/images/legs/jumpingjacks.jpg", "20 secs"),
    HFLegsBeginner("Squat", "assets/images/legs/squats.jpg", "12 reps"),
    HFLegsBeginner("Side hop", "assets/images/legs/sidehop.jpg", "30 secs"),
    HFLegsBeginner("Backward lunges left + right",
        "assets/images/legs/backwardlunges.jpg", "14 reps both"),
    HFLegsBeginner("Side lying leg lift left",
        "assets/images/legs/sidelyinglegliftleft.jpg", "12 reps"),
    HFLegsBeginner("Side lying leg lift right",
        "assets/images/legs/sidelyinglegliftright.jpg", "12 reps"),
  ];
}
