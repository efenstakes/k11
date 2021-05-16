import 'package:jiffy/jiffy.dart';
import 'package:k11/models/hospital.dart';
import 'package:k11/models/location.dart';
import 'package:k11/models/vaccination.dart';

List<Vaccination> vaccinations = [

  Vaccination(
    id: '32225634543',
    doneOn: Jiffy().subtract(days: 14).dateTime,
    hospital: Hospital(
      id: '34567662',
      name: 'Durban Qs',
      location: Location(
        city: 'Durban',
        country: 'South Africa',
      ),
    ),
  ),
  Vaccination(
    id: '55545634543',
    doneOn: Jiffy().subtract(days: 14).dateTime,
    hospital: Hospital(
      id: '345888342',
      name: 'Durban Qs',
      location: Location(
        city: 'Durban',
        country: 'South Africa',
      ),
    ),
  ),
  Vaccination(
    id: '345t434634543',
    doneOn: Jiffy().subtract(days: 14).dateTime,
    hospital: Hospital(
      id: '34888342',
      name: 'Durban Qs',
      location: Location(
        city: 'Durban',
        country: 'South Africa',
      ),
    ),
  ),
  Vaccination(
    id: '345t44444543',
    doneOn: Jiffy().subtract(days: 14).dateTime,
    hospital: Hospital(
      id: '34567342',
      name: 'Durban Qs',
      location: Location(
        city: 'Durban',
        country: 'South Africa',
      ),
    ),
  ),

];