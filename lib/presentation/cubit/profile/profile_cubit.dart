import 'package:bloc/bloc.dart';
import 'package:dio_project/domain/models/common/user.dart';
import 'package:dio_project/presentation/di/app_module.dart';
import 'package:dio_project/presentation/utils/loading_status.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState(profileStatus: IdleStatus()));

  Future<void> loadProfile() async {
    final repository = AppModule.getProfileRepository();
    emit(ProfileState(profileStatus: LoadingStatus()));
    try {
      final user = await repository.getProfile();
      emit(ProfileState(profileStatus: LoadedStatus(user.data!)));
    } catch (exception) {
      emit(ProfileState(profileStatus: FailedStatus(exception.toString())));
    }
  }
}
