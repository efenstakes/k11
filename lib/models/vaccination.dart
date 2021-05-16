import 'package:k11/models/hospital.dart';

class Vaccination {
  String id;
  Hospital hospital;
  DateTime doneOn;

  Vaccination({
    this.id,
    this.hospital,
    this.doneOn,
  });
}