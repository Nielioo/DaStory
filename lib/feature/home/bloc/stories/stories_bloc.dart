import 'package:bloc/bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:equatable/equatable.dart';

part 'stories_event.dart';
part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  final StoriesRemote _storiesRemote;
  StoriesBloc(this._storiesRemote) : super(StoriesInitial()) {
    on<GetStoriesEvent>(
      (event, emit) async {
        emit(StoriesLoading());
        final response = await _storiesRemote.getStroies();
        response.fold(
          (failed) => emit(StoriesFailed(message: failed)),
          (success) {
            return emit(StoriesSuccess(responseModel: success));
          },
        );
      },
    );
  }
}
