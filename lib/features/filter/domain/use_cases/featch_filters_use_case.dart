import 'package:health_track/features/filter/domain/entity/filter_category_item_entity.dart';
import 'package:injectable/injectable.dart';

import '../reposoitory/filter_repository.dart';

@injectable
class FetchFiltersUseCase {
  FilterRepository _filterRepository;
  @factoryMethod
  FetchFiltersUseCase(this._filterRepository);
  List<FilterCategoryItemEntity>call()=>_filterRepository.fetchFilters();
}