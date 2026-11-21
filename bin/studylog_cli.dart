void main(List<String> arguments) {
  const String subject = 'math';
  const Duration studyTime = Duration(minutes: 120);
  final studyHours = studyTime.inHours;
  final studyMinutes = studyTime.inMinutes % 60;
  final DateTime studyDate = DateTime(2026, 11, 7);
  final studyYear = studyDate.year.toString();
  final studyMonth = studyDate.month.toString().padLeft(2, '0');
  final studyDay = studyDate.day.toString().padLeft(2, '0');
  const String? memo = null;
  const minutesList = [10, 20, 50, 59, 60, 61, 70];

  for (final m in minutesList){
    if (isGoalAchieved(minutes: m, goal: 45)) {
      print('目標達成！($m分）');
    } else {
      print('目標達成ならず（$m分）');
    }
  }

  print('科目：$subject');
  print('学習時間： $studyHours時間$studyMinutes分');
  print('学習日： $studyYear-$studyMonth-$studyDay');
  print('メモ： ${memo??'メモなし'}');

  print(isGoalAchieved(minutes:60));
}


bool isGoalAchieved({required int minutes, int goal = 60}){
  // 60分以上で達成
  return minutes >= goal;
}
