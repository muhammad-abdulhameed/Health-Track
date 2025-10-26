// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/favorites/presentation/manager/favorite_cubit.dart'
    as _i430;
import '../../features/filter/data/repository_impl/filter_repository_impl.dart'
    as _i138;
import '../../features/filter/domain/reposoitory/filter_repository.dart'
    as _i505;
import '../../features/filter/domain/use_cases/featch_filters_use_case.dart'
    as _i55;
import '../../features/filter/presentation/manger/filter_cubit.dart' as _i608;
import '../../features/help_center/data/data_sources/remote/help_center_remote_data_source.dart'
    as _i451;
import '../../features/help_center/data/data_sources/remote/help_center_remote_data_source_impl.dart'
    as _i112;
import '../../features/help_center/data/repo/help_center_repo_impl.dart'
    as _i1040;
import '../../features/help_center/domain/repo/help_center_repo.dart' as _i399;
import '../../features/help_center/presentation/blocs/help_center_cubit.dart'
    as _i841;
import '../../features/notification/data/data_sources/remote/notification_remote_data_source.dart'
    as _i696;
import '../../features/notification/data/data_sources/remote/notification_remote_data_source_impl.dart'
    as _i86;
import '../../features/notification/data/repo/notification_repo_impl.dart'
    as _i933;
import '../../features/notification/domain/repo/notification_repo.dart'
    as _i588;
import '../../features/settings/data/data_sources/remote/settings_remote_data_source.dart'
    as _i17;
import '../../features/settings/data/data_sources/remote/settings_remote_data_source_impl.dart'
    as _i1038;
import '../../features/settings/data/repo/settings_repo_impl.dart' as _i812;
import '../../features/settings/domain/repo/settings_repo.dart' as _i95;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i430.FavoriteCubit>(() => _i430.FavoriteCubit());
    gh.factory<_i841.HelpCenterCubit>(() => _i841.HelpCenterCubit());
    gh.lazySingleton<_i588.NotificationRepo>(
      () => _i933.NotificationRepoImpl(),
    );
    gh.lazySingleton<_i17.SettingsRemoteDataSource>(
      () => _i1038.SettingsRemoteDataSourceImpl(),
    );
    gh.factory<_i505.FilterRepository>(() => _i138.FilterRepositoryImpl());
    gh.lazySingleton<_i399.HelpCenterRepo>(() => _i1040.HelpCenterRepoImpl());
    gh.lazySingleton<_i451.HelpCenterRemoteDataSource>(
      () => _i112.HelpCenterRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i95.SettingsRepo>(() => _i812.SettingsRepoImpl());
    gh.lazySingleton<_i696.NotificationRemoteDataSource>(
      () => _i86.NotificationRemoteDataSourceImpl(),
    );
    gh.factory<_i55.FetchFiltersUseCase>(
      () => _i55.FetchFiltersUseCase(gh<_i505.FilterRepository>()),
    );
    gh.lazySingleton<_i608.FilterCubit>(
      () => _i608.FilterCubit(gh<_i55.FetchFiltersUseCase>()),
    );
    return this;
  }
}
