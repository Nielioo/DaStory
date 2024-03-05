part of 'post_story_bloc.dart';

abstract class PostStoryState {
  const PostStoryState();
}

final class ImageGaleryLoading extends PostStoryState {}

final class ImageGaleryFailed extends PostStoryState {
  final String message;
  const ImageGaleryFailed({required this.message});
}

final class ImageGalerySuccess extends PostStoryState {
  final String imagePath;
  final XFile imageFile;

  const ImageGalerySuccess({required this.imagePath, required this.imageFile});
}

final class PostStoryInitial extends PostStoryState {}

final class PostStoryLoading extends PostStoryState {}

final class PostStoryFailed extends PostStoryState {
  final String message;

  const PostStoryFailed({required this.message});
}

final class PostStorySuccess extends PostStoryState {
  final RegisterResponseModel responseModel;

  const PostStorySuccess({required this.responseModel});
}