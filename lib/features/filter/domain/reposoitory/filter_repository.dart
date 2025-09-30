import 'package:health_track/features/filter/domain/entity/filter_category_item_entity.dart';
import 'package:injectable/injectable.dart';
@factoryMethod
abstract class FilterRepository {
 List<FilterCategoryItemEntity> fetchFilters();
}