import '../models/patient_model.dart';

class ExamplePatientList{
  static List<PatientModel> patientListTest = [PatientModel(
  name: "John Smith",
  age: "35",
  bloodGroup: "AB+",
  gender: "Male",
  ),

  PatientModel(
  name: "Emily Johnson",
  age: "28",
  bloodGroup: "O-",
  gender: "Female",
  ),
    PatientModel(
      name: "Michael Brown",
      age: "45",
      bloodGroup: "A+",
      gender: "Male",
    ),
    PatientModel(
      name: "Sophia Williams",
      age: "52",
      bloodGroup: "B-",
      gender: "Female",
    ),
    PatientModel(
      name: "Daniel Martinez",
      age: "40",
      bloodGroup: "O+",
      gender: "Male",
    ),
    PatientModel(
      name: "William Anderson",
      age: "22",
      bloodGroup: "A-",
      gender: "Male",
    ),
  ];


  static List<PatientModel> referredPatientsList  =[
    PatientModel(
      name: "Daniel Martinez",
      age: "40",
      bloodGroup: "O+",
      gender: "Male",
    ),
    PatientModel(
      name: "William Anderson",
      age: "22",
      bloodGroup: "A-",
      gender: "Male",
    ),
  ];
  static List<PatientModel> pendingReferredPatients = [
    PatientModel(
      name: "Emily Johnson",
      age: "28",
      bloodGroup: "O-",
      gender: "Female",
    ),
    PatientModel(
      name: "Michael Brown",
      age: "45",
      bloodGroup: "A+",
      gender: "Male",
    ),
  ];
  static List<PatientModel> acceptedReferredPatients = [
    PatientModel(
      name: "Emily Brown",
      age: "28",
      bloodGroup: "O-",
      gender: "Female",
    ),
    PatientModel(
      name: "Michael Scott",
      age: "45",
      bloodGroup: "A+",
      gender: "Male",
    ),
  ];
}