part of 'stories_bloc.dart';

@freezed
class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.started() = _Started;
  const factory StoriesEvent.first() = _First;
  const factory StoriesEvent.add() = _Add;
}
