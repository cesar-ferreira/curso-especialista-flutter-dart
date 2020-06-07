class Patient {

  final String firstName;
  final String familyName;
  final int age;
  final String profession;
  final String state;

  Patient({
    this.firstName,
    this.familyName,
    this.age,
    this.profession,
    this.state
  });

  static Patient buildObjectOfPatient(List list) {

    var fullName = list[0].split(' ');

    return Patient(
        firstName: fullName[0],
        familyName: fullName[1],
        age: int.tryParse(list[1]),
        profession: list[2],
        state: list[3]
    );
  }

  static bool checkOfAge(Patient patient) {
    return patient.age >= 18;
  }

  static int numberOfAdultPatients(List<Patient> patients) {
    int value = 0;

    for(Patient patient in patients) {
      if(Patient.checkOfAge(patient)) {
        value++;
      }
    }

    return value;
  }
}