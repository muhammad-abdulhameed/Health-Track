import 'package:flutter/material.dart';

import '../widgets/all_doctors_body_widget.dart';
import '../widgets/doctors_by_specialty_body_widget.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key, this.specialty});
final String? specialty;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: specialty==null? const AllDoctorsBodyWidget():DoctorsBySpecialtyBodyWidget(specialty: specialty,),
      ),
    );
  }
}
