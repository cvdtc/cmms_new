import 'dart:convert';

class DashboardModel {
  int jml_masalah, jml_selesai;
  DashboardModel({required this.jml_masalah, required this.jml_selesai});

  factory DashboardModel.fromJson(Map<String, dynamic> map) {
    return DashboardModel(
        jml_masalah: map["jml_masalah"], jml_selesai: map["jml_selesai"]);
  }

  Map<String, dynamic> toJson() {
    return {"jml_masalah": jml_masalah, "jml_selesai": jml_selesai};
  }

  @override
  String toString() {
    return 'DashboardModel{jml_masalah: $jml_masalah, jml_selesai: $jml_selesai}';
  }
}

List<DashboardModel> loginFromJson(String dataJson) {
  final data = json.decode(dataJson);
  return List<DashboardModel>.from(
      data.map((item) => DashboardModel.fromJson(item)));
}

String loginToJson(DashboardModel data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
