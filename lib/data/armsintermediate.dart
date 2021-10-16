class HFArmsIntermediate {
  String workoutTitle;
  String imagePath;
  String counts;

  HFArmsIntermediate(this.workoutTitle, this.imagePath, this.counts);

  static List<HFArmsIntermediate> data = [
    HFArmsIntermediate(
        "Jumping Jacks", "assets/images/arms/jumpingjacks.jpg", "30 secs"),
    HFArmsIntermediate("Arm Circles Clockwise",
        "assets/images/arms/armcirclesclockwise.jpg", "30 secs"),
    HFArmsIntermediate("Arm Circles Counter Clockwise",
        "assets/images/arms/armcirclescounterclockwise.jpg", "30 secs"),
    HFArmsIntermediate("Floor Tricep Dips",
        "assets/images/arms/floortricepdips.jpg", "12 reps"),
    HFArmsIntermediate("Military Push-Ups",
        "assets/images/arms/militarypushups.jpg", "12 reps"),
    HFArmsIntermediate("Leg Barbell Curl Right",
        "assets/images/arms/legbarbellcurlright.jpg", "12 reps"),
    HFArmsIntermediate("Leg Barbell Curl Left",
        "assets/images/arms/legbarbellcurlleft.jpg", "12 reps"),
    HFArmsIntermediate("Alternating Hooks",
        "assets/images/arms/alternatinghooks.jpg", "20 reps"),
    HFArmsIntermediate(
        "Arm Scissors", "assets/images/arms/armscissors.jpg", "30 secs"),
  ];
}
