class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  // 생성자
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // JSON을 Todo 객체로 변환하는 팩토리 생성자
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  // Todo 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  // 객체를 문자열로 변환하는 toString() 메서드 오버라이드
  @override
  String toString() {
    return 'Todo{id: $id, userId: $userId, title: "$title", completed: $completed}';
  }
}
