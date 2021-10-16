class HFAbsAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFAbsAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFAbsAdvance> data = [
    HFAbsAdvance("Jumping Jacks", "assets/images/abs_workout/jumpingjacks.jpg",
        "30 secs"),
    HFAbsAdvance("Abdominal Cruches",
        "assets/images/abs_workout/abdominalcrunches.jpg", "30 reps"),
    HFAbsAdvance("Russian Twist", "assets/images/abs_workout/russiantwist.jpg",
        "48 reps"),
    HFAbsAdvance("Mountain Climber",
        "assets/images/abs_workout/mountainclimber.jpg", "30 reps"),
    HFAbsAdvance(
        "Heel Touch", "assets/images/abs_workout/heeltouch.jpg", "30 reps"),
    HFAbsAdvance("Sit-ups", "assets/images/abs_workout/situps.jpg", "20 reps"),
    HFAbsAdvance("Spine Lumbar Twist Stretch left",
        "assets/images/abs_workout/spinelumbartwiststretchleft.jpg", "30 secs"),
    HFAbsAdvance(
        "Spine Lumbar Twist Stretch Right",
        "assets/images/abs_workout/spinelumbartwiststretchright.jpg",
        "30 secs"),
    HFAbsAdvance("Bicycle Crunches",
        "assets/images/abs_workout/bicyclecrunches.jpg", "24 secs"),
    HFAbsAdvance("Side Plank left",
        "assets/images/abs_workout/sideplankleft.jpg", "20 secs"),
    HFAbsAdvance("Side Plank right",
        "assets/images/abs_workout/sideplankright.jpg", "20 secs"),
    HFAbsAdvance(
        "Butt Bridge", "assets/images/abs_workout/buttbridge.jpg", "30 reps"),
    HFAbsAdvance("V-up", "assets/images/abs_workout/vup.jpg", "16 reps"),
  ];
}
