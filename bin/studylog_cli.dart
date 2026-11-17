void main(List<String> arguments) {
  const String subject = 'math';
  const Duration studyTime = Duration(minutes: 120);
  final studyHours = studyTime.inHours;
  final studyMinutes = studyTime.inMinutes % 60;
  final DateTime studyDate = DateTime(2026, 11, 7);
  final studyYear = studyDate.year.toString();
  final studyMonth = studyDate.month.toString().padLeft(2, '0');
  final studyDay = studyDate.day.toString().padLeft(2, '0');
  const String memo = '二次関数を復習';

  print('科目：$subject');
  print('学習時間： $studyHours時間$studyMinutes分');
  print('学習日： $studyYear-$studyMonth-$studyDay');
  print('メモ： $memo');
}
