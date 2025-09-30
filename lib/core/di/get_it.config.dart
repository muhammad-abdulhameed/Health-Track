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

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i430.FavoriteCubit>(() => _i430.FavoriteCubit());
    gh.factory<_i505.FilterRepository>(() => _i138.FilterRepositoryImpl());
    gh.factory<_i55.FetchFiltersUseCase>(
      () => _i55.FetchFiltersUseCase(gh<_i505.FilterRepository>()),
    );
    gh.lazySingleton<_i608.FilterCubit>(
      () => _i608.FilterCubit(gh<_i55.FetchFiltersUseCase>()),
    );
    return this;
  }
}
