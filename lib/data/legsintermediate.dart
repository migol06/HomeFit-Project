class HFLegsIntermediate {
  String workoutTitle;
  String imagePath;
  String counts;

  HFLegsIntermediate(this.workoutTitle, this.imagePath, this.counts);

  static List<HFLegsIntermediate> data = [
    HFLegsIntermediate(
        "Jumping Jacks", "assets/images/legs/jumpingjacks.jpg", "30 secs"),
    HFLegsIntermediate("Squats", "assets/images/legs/squats.jpg", "20 reps"),
    HFLegsIntermediate(
        "Lunges Left + Right", "assets/images/legs/lunges.jpg", "14 reps both"),
    HFLegsIntermediate(
        "Sumo squats", "assets/images/legs/sumosquats.jpg", "12 reps"),
    HFLegsIntermediate("Reverse Flutter Kicks",
        "assets/images/legs/reverseflutterkicks.jpg", "12 reps"),
    HFLegsIntermediate("Wall Sit", "assets/images/legs/wallsit.jpg", "30 secs"),
    HFLegsIntermediate("Right Quad Stretch",
        "assets/images/legs/rightquadstretch.jpg", "30 secs"),
    HFLegsIntermediate("Left Quad Stretch",
        "assets/images/legs/leftquadstretch.jpg", "30 secs"),
  ];
}
