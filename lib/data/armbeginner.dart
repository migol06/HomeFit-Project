class HFArmsBeginner {
  String workoutTitle;
  String imagePath;
  String counts;

  HFArmsBeginner(this.workoutTitle, this.imagePath, this.counts);

  static List<HFArmsBeginner> data = [
    HFArmsBeginner(
        "Jumping Jacks", "assets/images/arms/jumpingjacks.jpg", "20 secs"),
    HFArmsBeginner("Arm Circles Clockwise",
        "assets/images/arms/armcirclesclockwise.jpg", "30 secs"),
    HFArmsBeginner("Arm Circles Counter",
        "assets/images/arms/armcirclescounterclockwise.jpg", "30 secs"),
    HFArmsBeginner("Arm Raises", "assets/images/arms/armraise.jpg", "30 secs"),
    HFArmsBeginner(
        "Side Arm Raises", "assets/images/arms/sidearmraise.jpg", "30 secs"),
    HFArmsBeginner(
        "Tricep Dips", "assets/images/arms/tricepdips.jpg", "10 reps"),
  ];
}
