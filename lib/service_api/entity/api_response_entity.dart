class ApiResponseEntity {
  String? id;
  String? doa;
  String? ayat;
  String? latin;
  String? artinya;

  ApiResponseEntity({
    this.id,
    this.doa,
    this.ayat,
    this.latin,
    this.artinya,
  });

  factory ApiResponseEntity.fromJson(Map<String, dynamic> json) => ApiResponseEntity(
        id: json["id"],
        doa: json["doa"],
        ayat: json["ayat"],
        latin: json["latin"],
        artinya: json["artinya"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "doa": doa,
        "ayat": ayat,
        "latin": latin,
        "artinya": artinya,
      };
}
