// ignore: camel_case_types
class myprofile_model {
  String _name;

  String _surname;
  int _age;

  int _photo;

  myprofile_model(this._name, this._surname, this._age, this._photo);

  myprofile_model.empty();

  myprofile_model.dynamical(dynamic v) {
    this._name = v['name'];
    this._surname = v['surname'];
    this._age = v['age'];
    this._photo = v['photo'];
  }

  toJson() {
    return {
      "name": _name,
      "surname":_surname,
      "age":_age,
      "photo":_photo,
    };
  }

String get name => _name;
  set name(String value){
    _name=value;
  }


  String get surname => _surname;
  set surname(String value){
    _surname=value;
  }


  int get age => _age;
  set age(int value){
    _age=value;
  }


  int get photo => _photo;
  set photo(int value){
    _photo=value;
  }



}
