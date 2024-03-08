import 'package:bloc/bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:dastory/feature/home/data/model/get_stories_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_event.dart';
part 'stories_state.dart';

part 'stories_bloc.freezed.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  int pageItem = 1;
  int sizeItem = 10;
  bool isLastPage = false;
  List<ListStory> listStory = [];
  final StoriesRemote _storiesRemote;

  StoriesBloc(this._storiesRemote) : super(const _StoriesInitial()) {
    on<_First>((event, emit) async {
      emit(const _StoriesLoading());
      pageItem = 1;
      sizeItem = 10;
      listStory = [];
      final response = await _storiesRemote.getStories();
      response.fold(
        (failed) => emit(_StoriesFailed(failed)),
        (success) {
          if (success.listStory!.length < sizeItem) {
            isLastPage = true;
          } else {
            pageItem += 1;
          }
          listStory += success.listStory!;
          return emit(_StoriesSuccess(listStory + success.listStory!));
        },
      );
    });
  }
}
