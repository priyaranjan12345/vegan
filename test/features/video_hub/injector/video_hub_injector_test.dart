// import 'package:flutter_test/flutter_test.dart';
// import 'package:get_it/get_it.dart';

// import 'package:vegan/src/features/video_hub/data/datasource/video_hub_remote_datasource.dart';
// import 'package:vegan/src/features/video_hub/data/repository/i_video_hub_repository.dart';
// import 'package:vegan/src/features/video_hub/domain/repository/video_hub_repository.dart';
// import 'package:vegan/src/features/video_hub/domain/usecase/continuation_usecase.dart';
// import 'package:vegan/src/features/video_hub/domain/usecase/video_hub_usecase.dart';
// import 'package:vegan/src/features/video_hub/injector/video_hub_injector.dart';
// import 'package:vegan/src/features/video_hub/presentation/bloc/browse_bloc/browse_bloc.dart';
// import 'package:vegan/src/features/video_hub/presentation/bloc/moods_cubit/moods_cubit.dart';
// import 'package:vegan/src/features/video_hub/presentation/bloc/playlist_cubit/playlist_cubit.dart';
// import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';

// void main() {
//   late GetIt injector;

//   setUp(() async {
//     // fresh instance for each test
//     // injector = GetIt.asNewInstance(); 
//     injector = GetIt.instance;
//     // await injector.reset();
    
    
//     VideoHubInjector(injector).call();

//     // Mock Dio or other required dependencies before resolving
//     injector.registerLazySingleton(() => FakeDio());
//   });

//   // tearDown(() {
//   //   injector.reset();
//   // });

//   group('VideoHubInjector', () {
//     test('should register and resolve VideoHubBloc', () {
//       final bloc = injector<VideoHubBloc>();
//       expect(bloc, isA<VideoHubBloc>());
//     });

//     test('should register and resolve BrowseBloc', () {
//       final bloc = injector<BrowseBloc>();
//       expect(bloc, isA<BrowseBloc>());
//     });

//     test('should register and resolve VideoHubUsecase', () {
//       final usecase = injector<VideoHubUsecase>();
//       expect(usecase, isA<VideoHubUsecase>());
//     });

//     test('should register and resolve VideoHubRepository', () {
//       final repo = injector<VideoHubRepository>();
//       expect(repo, isA<IVideoHubRepository>());
//     });

//     test('should register and resolve VideoHubRemoteDatasource', () {
//       final ds = injector<VideoHubRemoteDatasource>();
//       expect(ds, isA<IVideoHubRemoteDatasource>());
//     });

//     test('should register and resolve MoodsCubit', () {
//       final cubit = injector<MoodsCubit>();
//       expect(cubit, isA<MoodsCubit>());
//     });

//     test('should register and resolve PlaylistCubit', () {
//       final cubit = injector<PlaylistCubit>();
//       expect(cubit, isA<PlaylistCubit>());
//     });

//     test('should register and resolve ContinuationUsecase', () {
//       final usecase = injector<ContinuationUsecase>();
//       expect(usecase, isA<ContinuationUsecase>());
//     });
//   });
// }

// /// Fake dio class for test
// class FakeDio {}
