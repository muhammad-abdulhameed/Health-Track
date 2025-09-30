import 'package:injectable/injectable.dart';

import '../../domain/entity/filter_category_item_entity.dart';
import '../../domain/reposoitory/filter_repository.dart';
@Injectable(as: FilterRepository)
class FilterRepositoryImpl extends FilterRepository {
  @override
  List<FilterCategoryItemEntity> fetchFilters() {
    return [
      FilterCategoryItemEntity( name: "Specialties", filtersOptions: ["Cardiologist","Dermatologist","Neurologist","Pediatrician","Psychiatrist","Radiologist","Surgeon"] ),
      FilterCategoryItemEntity( name:"Gender", filtersOptions: ["Men","Woman"]),
      FilterCategoryItemEntity( name:"Language", filtersOptions: ["English","Spanish","French","German","Chinese","Japanese"]),
      FilterCategoryItemEntity( name:"Rating", filtersOptions: ["1","2","3","4","5"]),
      FilterCategoryItemEntity( name:"Insurance", filtersOptions: ["Aetna","Blue Cross Blue Shield","Cigna","UnitedHealthcare","Humana"]),
      FilterCategoryItemEntity( name:"Availability", filtersOptions: ["Today","Tomorrow","This Week","Next Week","This Month","Next Month"]),
      FilterCategoryItemEntity( name:"Distance", filtersOptions: ["5 miles","10 miles","20 miles","50 miles","100 miles"]),
      FilterCategoryItemEntity( name:"Experience", filtersOptions: ["1 year","2 years","5 years","10 years","15+ years"]),
      FilterCategoryItemEntity( name:"Age Group", filtersOptions: ["Children","Adults","Seniors"]),

    ];

  }
}