import 'models/family.dart';
import 'models/report.dart';

void main() {

  var list = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
    'César Ferreira|26|desenvolvedor|PB',
  ];

  if( Report.simpleListValidation(list) ) {
    List<Family> listOfFamilies = Report.buildObjects(list);
    Report.generateCompleteReport(listOfFamilies);
  } else {
    print("Your list contains invalid data, please check the list and correct the data \n"
        "Example of correct data: César Ferreira|26|developer|PB \n"
        "Where the first value corresponds to the name, the second age, the third profession and the fourth state");
  }
}
