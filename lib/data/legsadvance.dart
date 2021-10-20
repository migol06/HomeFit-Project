class HFLegsAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFLegsAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFLegsAdvance> data = [
    HFLegsAdvance(
        "Jumping Jacks", "assets/images/legs/jumpingjacks.jpg", "30 secs"),
    HFLegsAdvance("Sumo Squat", "assets/images/legs/sumosquats.jpg", "20 reps"),
    HFLegsAdvance("Glute Kick Back Left",
        "assets/images/legs/glutekickbackleft.jpg", "12 reps"),
    HFLegsAdvance("Glute Kick Back Right",
        "assets/images/legs/glutekickbackright.jpg", "12 reps"),
    HFLegsAdvance(
        "Jumping squats", "assets/images/legs/jumpingsquats.jpg", "20 reps"),
    HFLegsAdvance("Wall sit", "assets/images/legs/wallsit.jpg", "40 secs"),
    HFLegsAdvance(
        "Wall Resisting Single Leg Calf Raise Left",
        "assets/images/legs/wallresistingsinglelegcalfraiseleft.jpg",
        "12 reps"),
    HFLegsAdvance("Wall Resisting Single Leg Calf Raise Right",
        "assets/images/legs/wallresistingsinglecalfraiseright.jpg", "12 reps"),
    HFLegsAdvance("Lying Butterfly Stretch",
        "assets/images/legs/lyingbutterflystretch.jpg", "30 secs"),
    HFLegsAdvance("Botttom Leg Lift Right",
        "assets/images/legs/Bottom Leg Lift Right.jpg", "12 reps"),
    HFLegsAdvance("Bottom Leg lift left",
        "assets/images/legs/bottomlegliftleft.jpg", "12 reps"),
  ];
}
