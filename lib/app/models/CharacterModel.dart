class CharacterModel {

  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;



  CharacterModel(this.id, this.name, this.status, this.species, this.gender, this.image, );


  CharacterModel.fromJson(Map<String, dynamic> json) :
        id= json['id'],
        name= json['name'],
        status= json['status'],
        species= json['species'],
        image= json['image'],
        gender= json['gender'];




  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'status': status,
    'species': species,
    'image': image,
    'gender': gender,

  };

}