class HFAbsIntermediate {
  String workoutTitle;
  String imagePath;
  String counts;

  HFAbsIntermediate(this.workoutTitle, this.imagePath, this.counts);

  static List<HFAbsIntermediate> data = [
    HFAbsIntermediate("Jumping Jacks",
        "assets/images/abs_workout/jumpingjacks.jpg", "30 secs"),
    HFAbsIntermediate(
        "Heel Touch", "assets/images/abs_workout/heeltouch.jpg", "26 reps"),
    HFAbsIntermediate("Mountain Climber",
        "assets/images/abs_workout/mountainclimber.jpg", "20 reps"),
    HFAbsIntermediate(
        "Butt Bridge", "assets/images/abs_workout/buttbridge.jpg", "20 reps"),
    HFAbsIntermediate("V Up", "assets/images/abs_workout/vup.jpg", "20 reps"),
    HFAbsIntermediate("Side Plank Left",
        "assets/images/abs_workout/sideplankleft.jpg", "30 secs"),
    HFAbsIntermediate("Side Plank Right",
        "assets/images/abs_workout/sideplankright.jpg", "30 secs"),
    HFAbsIntermediate("Cobra Stretch",
        "assets/images/abs_workout/cobrastretch.jpg", "30 secs"),
  ];
}
