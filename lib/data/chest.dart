class HFChest {
  String workoutTitle;
  String imagePath;

  HFChest(this.workoutTitle, this.imagePath);

  static List<HFChest> chest = [
    HFChest('Jumping Jacks', 'assets/images/chest/jumpingjacks.jpg'),
    HFChest('Incline push-ups', 'assets/images/chest/inclinepush-ups.jpg'),
    HFChest('Knee push-ups', 'assets/images/chest/kneepush-ups.jpg'),
    HFChest('Push-ups', 'assets/images/chest/push-ups.jpg'),
    HFChest('Tricep Dips', 'assets/images/chest/tricepdips.jpg'),
    HFChest('Wide arm push-ups', 'assets/images/chest/widearmpush-ups.jpg'),
  ];
}
