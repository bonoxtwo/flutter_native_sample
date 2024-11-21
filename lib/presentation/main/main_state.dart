import '../../domain/model/todo.dart';

class MainState {
  final Todo? todo;
  final bool isLoading;

  const MainState({
    required this.todo,
    required this.isLoading,
  });

  // copyWith 메서드 추가
  MainState copyWith({
    Todo? todo,
    bool? isLoading,
  }) {
    return MainState(
      todo: todo ?? this.todo,  // todo가 null이면 기존 todo 값 사용
      isLoading: isLoading ?? this.isLoading,  // isLoading이 null이면 기존 값 사용
    );
  }
}
