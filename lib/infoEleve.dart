class InfoEleve {
  int? id;
  int ?idUser;
  int ?nature;
  String? academicyear;
  String ?photo;
  String ?lastName;
  String ?firstName;
  String ?classCurrent;
  int ? idClass;
  String  ?level;
  String ? sublevel;
  String ? classroom;
  String ? classSection;
  int ?classroomType;
  String ? registration;
  String ? code;
  String ? invoice;
  String ? registrationNumber;
  String ? registrationNum;
  String ? admissionDate;
  int ? number;
  String ? admissionNumber;
  String ? numberAdmission;
  int ? fraisScho;
  int ? statut;
  int  ?etat;
  int  ?migration;
  int ? actif;
  Null reasonOfLeaving;
  Null moreReasonOfLeaving;

  InfoEleve(
      {this.id,
      this.idUser,
      this.nature,
      this.academicyear,
      this.photo,
      this.lastName,
      this.firstName,
      this.classCurrent,
      this.idClass,
      this.level,
      this.sublevel,
      this.classroom,
      this.classSection,
      this.classroomType,
      this.registration,
      this.code,
      this.invoice,
      this.registrationNumber,
      this.registrationNum,
      this.admissionDate,
      this.number,
      this.admissionNumber,
      this.numberAdmission,
      this.fraisScho,
      this.statut,
      this.etat,
      this.migration,
      this.actif,
      this.reasonOfLeaving,
      this.moreReasonOfLeaving});

  InfoEleve.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUser = json['id_user'];
    nature = json['nature'];
    academicyear = json['academicyear'];
    photo = json['photo'];
    lastName = json['last_name'];
    firstName = json['first_name'];
    classCurrent = json['class_current'];
    idClass = json['id_class'];
    level = json['level'];
    sublevel = json['sublevel'];
    classroom = json['classroom'];
    classSection = json['class_section'];
    classroomType = json['classroom_type'];
    registration = json['registration'];
    code = json['code'];
    invoice = json['invoice'];
    registrationNumber = json['registration_number'];
    registrationNum = json['registration_num'];
    admissionDate = json['admission_date'];
    number = json['number'];
    admissionNumber = json['admission_number'];
    numberAdmission = json['number_admission'];
    fraisScho = json['frais_scho'];
    statut = json['statut'];
    etat = json['etat'];
    migration = json['migration'];
    actif = json['actif'];
    reasonOfLeaving = json['reason_of_leaving'];
    moreReasonOfLeaving = json['more_reason_of_leaving'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_user'] = this.idUser;
    data['nature'] = this.nature;
    data['academicyear'] = this.academicyear;
    data['photo'] = this.photo;
    data['last_name'] = this.lastName;
    data['first_name'] = this.firstName;
    data['class_current'] = this.classCurrent;
    data['id_class'] = this.idClass;
    data['level'] = this.level;
    data['sublevel'] = this.sublevel;
    data['classroom'] = this.classroom;
    data['class_section'] = this.classSection;
    data['classroom_type'] = this.classroomType;
    data['registration'] = this.registration;
    data['code'] = this.code;
    data['invoice'] = this.invoice;
    data['registration_number'] = this.registrationNumber;
    data['registration_num'] = this.registrationNum;
    data['admission_date'] = this.admissionDate;
    data['number'] = this.number;
    data['admission_number'] = this.admissionNumber;
    data['number_admission'] = this.numberAdmission;
    data['frais_scho'] = this.fraisScho;
    data['statut'] = this.statut;
    data['etat'] = this.etat;
    data['migration'] = this.migration;
    data['actif'] = this.actif;
    data['reason_of_leaving'] = this.reasonOfLeaving;
    data['more_reason_of_leaving'] = this.moreReasonOfLeaving;
    return data;
  }
}