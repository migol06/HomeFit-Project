class HFAbsBeginner {
  String workoutTitle;
  String imagePath;
  String counts;

  HFAbsBeginner(this.workoutTitle, this.imagePath, this.counts);

  static List<HFAbsBeginner> data = [
    HFAbsBeginner("Jumping Jacks", "assets/images/abs_workout/jumpingjacks.jpg",
        "20 secs"),
    HFAbsBeginner("Ambdominal Cruches",
        "assets/images/abs_workout/abdominalcrunches.jpg", "16 reps"),
    HFAbsBeginner("Russian Twist", "assets/images/abs_workout/russiantwist.jpg",
        "20 reps"),
    HFAbsBeginner("Mountain Climber",
        "assets/images/abs_workout/mountainclimber.jpg", "16 reps"),
    HFAbsBeginner(
        "Heel Touch", "assets/images/abs_workout/heeltouch.jpg", "20 reps"),
  ];
}
