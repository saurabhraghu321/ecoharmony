class NewsModel {
  String imageuRL;
  String heading;
  String description;

  NewsModel({required this.imageuRL, required this.heading, required this.description});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        imageuRL: json["imageuRL"],
        heading: json["heading"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "imageuRL": imageuRL,
        "heading": heading,
        "description": description,
      };
}