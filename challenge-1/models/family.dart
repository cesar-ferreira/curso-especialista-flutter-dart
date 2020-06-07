import 'patient.dart';

class Family {

  final String name;
  final List<Patient> patients;

  Family({
    this.name,
    this.patients
  });

  static Family buildNewFamily(Patient patient) {

    List<Patient> patients = [patient];
    return Family(
        name: patient.familyName,
        patients: patients
    );
  }

  static int numberOfAdultPatientsInTheFamily(List<Family> families) {

    int value = 0;

    for(Family family in families) {
      value += Patient.numberOfAdultPatients(family.patients);
    }

    return value;
  }
}

