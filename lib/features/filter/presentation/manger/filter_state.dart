import '../../domain/entity/filter_category_item_entity.dart';

abstract class FilterState {}
class FilterInitial extends FilterState {}
class FilterFetchLoading extends FilterState {}
class FilterFetchSuccess extends FilterState {
  final List<FilterCategoryItemEntity> filters;
  final bool isExpand;
  final int? index;
  FilterFetchSuccess(this.filters, {this.isExpand = false,this.index});
}
class FilterFetchFailure extends FilterState {
  final String error;
  FilterFetchFailure(this.error);
}

