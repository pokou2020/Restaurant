

class User {
  int? id;
  int? idUser;
  String? civility;
  String? person;
  String? lastName;
  String? fistName;
  String? phone;
  String? homePhone;
  String? personnalPhone;
  String? workPhone;
  String ?otherPhone;
  String ?whatsappPhone;
  String ?email;
  String ?email2;
  String ?mainMobile;
  String ?otherMobile;
  String ?adress;
  String ?postalCode;
  String ?city;
  String ?country;
  String ?nationality;
  String ?mainLanguage;
  String ?occupation;
  String ?enterprise;
  String ?enterpriseAdress;
  String ?responsibleOfSchoolFees;
  String ?codeParent;
  int ?updateInfos;

  User(
      {this.id,
      this.idUser,
      this.civility,
      this.person,
      this.lastName,
      this.fistName,
      this.phone,
      this.homePhone,
      this.personnalPhone,
      this.workPhone,
      this.otherPhone,
      this.whatsappPhone,
      this.email,
      this.email2,
      this.mainMobile,
      this.otherMobile,
      this.adress,
      this.postalCode,
      this.city,
      this.country,
      this.nationality,
      this.mainLanguage,
      this.occupation,
      this.enterprise,
      this.enterpriseAdress,
      this.responsibleOfSchoolFees,
      this.codeParent,
      this.updateInfos});

 factory User.fromJson(Map<String,dynamic> responseData) {
   return User(
     id : responseData['id'],
    idUser : responseData['id_user'],
    civility : responseData['civility'],
    person : responseData['person'],
    lastName : responseData['last_name'],
    fistName : responseData['fist_name'],
    phone : responseData['phone'],
    homePhone : responseData['home_phone'],
    personnalPhone : responseData['personnal_phone'],
    workPhone : responseData['work_phone'],
    otherPhone : responseData['other_phone'],
    whatsappPhone : responseData['whatsapp_phone'],
    email : responseData['email'],
    email2 : responseData['email2'],
    mainMobile : responseData['main_mobile'],
    otherMobile : responseData['other_mobile'],
    adress : responseData['adress'],
    postalCode : responseData['postal_code'],
    city : responseData['city'],
    country : responseData['country'],
    nationality : responseData['nationality'],
    mainLanguage : responseData['main_language'],
    occupation : responseData['occupation'],
    enterprise : responseData['enterprise'],
    enterpriseAdress : responseData['enterprise_adress'],
    responsibleOfSchoolFees : responseData['responsible_of_school_fees'],
    codeParent : responseData['code_parent'],
    updateInfos : responseData['update_infos'],
   );
  }
    }