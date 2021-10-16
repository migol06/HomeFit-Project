class HFShoulderBackIntermediate {
  String workoutTitle;
  String imagePath;
  String counts;

  HFShoulderBackIntermediate(this.workoutTitle, this.imagePath, this.counts);

  static List<HFShoulderBackIntermediate> data = [
    HFShoulderBackIntermediate("Jumping Jacks",
        "assets/images/shoulder&back/jumpingjacks.jpg", "30 secs"),
    HFShoulderBackIntermediate("Triceps Kickbacks",
        "assets/images/shoulder&back/tricepskickbacks.jpg", "14 reps"),
    HFShoulderBackIntermediate("Incline push-ups",
        "assets/images/shoulder&back/inclinepush-ups.jpg", "14 reps"),
    HFShoulderBackIntermediate("Floor Tricep Dips",
        "assets/images/shoulder&back/floortricepdips.jpg", "16 reps"),
    HFShoulderBackIntermediate(
        "Hip Hinge", "assets/images/shoulder&back/hiphinge.jpg", "10 reps"),
    HFShoulderBackIntermediate("Rhomboid Pulls",
        "assets/images/shoulder&back/rhomboidpulls.jpg", "12 reps"),
    HFShoulderBackIntermediate(
        "Swimmer", "assets/images/shoulder&back/swimmer.jpg", "20 reps"),
    HFShoulderBackIntermediate("Cat Cow Pose",
        "assets/images/shoulder&back/catcowpose.jpg", "15 reps"),
    HFShoulderBackIntermediate(
        "Child Pose", "assets/images/shoulder&back/childpose.jpg", "30 secs"),
  ];
}
