import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'startup_state.dart';
part 'startup_cubit.freezed.dart';

class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(const StartupState.initial());

  void init() {
    //TODO check if user is authorized and remove future
    Future.delayed(Duration.zero, () {
      emit(const StartupState.unauthorized());
    });
  }
}