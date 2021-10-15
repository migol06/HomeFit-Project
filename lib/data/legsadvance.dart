class HFLegsAdvance {
  String workoutTitle;
  String imagePath;
  String counts;

  HFLegsAdvance(this.workoutTitle, this.imagePath, this.counts);

  static List<HFLegsAdvance> data = [
    HFLegsAdvance(
        "Jumping Jacks", "assets/images/legs/jumpingjacks.jpg", "20 secs"),
    HFLegsAdvance("Sumo Squat", "assets/images/legs/squats.jpg", "20 reps"),
    HFLegsAdvance(
        "Glute kick back", "assets/images/legs/sidehop.jpg", "12 reps both"),
    HFLegsAdvance("Jumping squats",
        "assets/images/legs/sidelyinglegliftleft.jpg", "20 reps"),
    HFLegsAdvance(
        "Wall sit", "assets/images/legs/sidelyinglegliftright.jpg", "40 secs"),
    HFLegsAdvance("Wall Resisting Single leg calf rise",
        "assets/images/legs/sidelyinglegliftright.jpg", "12 reps both"),
    HFLegsAdvance("Kying Butterfly Stretch",
        "assets/images/legs/sidelyinglegliftright.jpg", "30 secs"),
    HFLegsAdvance("Botttom Leg Lift Right",
        "assets/images/legs/sidelyinglegliftright.jpg", "12 reps"),
    HFLegsAdvance("Bottom Leg lift left",
        "assets/images/legs/sidelyinglegliftright.jpg", "12 reps"),
  ];
}
