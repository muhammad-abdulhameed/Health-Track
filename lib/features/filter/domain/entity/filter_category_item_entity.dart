class FilterCategoryItemEntity {
  final String? id;
  final String name;
  final bool isSelected;
  final List<String> filtersOptions;

  FilterCategoryItemEntity({
     this.id,
    required this.name,
    this.isSelected = false,
    required this.filtersOptions,
  });
}
