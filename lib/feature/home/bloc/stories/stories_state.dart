part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.initial() = _StoriesInitial;
  const factory StoriesState.loading() = _StoriesLoading;
  const factory StoriesState.failed(String message) = _StoriesFailed;
  const factory StoriesState.success(
      {List<ListStory>? listStory, bool? isLastPage}) = _StoriesSuccess;
}
