 class MyExampleJsonModel {
  String? name;
  String? summary;
  String? phone;

  MyExampleJsonModel({
    this.name,
    this.summary,
    this.phone,
  });
  MyExampleJsonModel.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    summary = json['summary']?.toString();
    phone = json['phone']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['summary'] = summary;
    data['phone'] = phone;
    return data;
  }
}
