import 'family.dart';
import 'patient.dart';

class Report {

  static bool simpleListValidation(List list) {

    for(final item in list) {
      List patient = item.split('|');
      if(patient.length != 4) {
        return false;
      }
    }

    return true;
  }

  static List<Family> buildObjects(List list) {

    final List<Family> listOfFamilies = [];

    for(final item in list) {

      final Patient patient = Patient.buildObjectOfPatient(item.split('|'));
      final int index = listOfFamilies.indexWhere(
              (family) => (family.name.toLowerCase() == patient.familyName.toLowerCase())
      );

      index.isNegative
          ? listOfFamilies.add(Family.buildNewFamily(patient))
          : listOfFamilies[index].patients.add(patient);

    }

    return listOfFamilies;
  }

  static void generateAgeReport(List<Family> families) {

    print("Number of adult patients: ${Family.numberOfAdultPatientsInTheFamily(families)}");
    print('-----------------');
  }

  static void generatePatientReportByFamily(List<Family> families) {

    for(final Family family in families) {
      print("Family ${family.name}:");
      family.patients.forEach((patient) => print("    ${patient.firstName}"));
    }
    print('-----------------');
  }

  static void generateCompleteReport(List<Family> families) {
    generateAgeReport(families);
    generatePatientReportByFamily(families);
  }
}
