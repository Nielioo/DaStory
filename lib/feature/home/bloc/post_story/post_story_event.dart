part of 'post_story_bloc.dart';

abstract class PostStoryEvent extends Equatable {
  const PostStoryEvent();

  @override
  List<Object> get props => [];
}

class PickImageGaleryEvent extends PostStoryEvent {}

class PickImageCameraGaleryEvent extends PostStoryEvent {}

// ignore: must_be_immutable
class DoPostStoryEvent extends PostStoryEvent {
  final XFile imageFile;
  final String description;
  final num lat;
  final num lon;

  const DoPostStoryEvent({
    required this.imageFile,
    required this.description,
    required this.lat,
    required this.lon,
  });
}
