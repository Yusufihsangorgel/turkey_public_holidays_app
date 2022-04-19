class Holiday {
  Holiday({
    required this.gun,
    required this.en,
    required this.haftagunu,
    required this.tarih,
    required this.uzuntarih,
  });

  final String gun;
  final String en;
  final String haftagunu;
  final DateTime tarih;
  final String uzuntarih;

  factory Holiday.fromJson(Map<String, dynamic> json) => Holiday(
        gun: json["gun"],
        en: json["en"],
        haftagunu: json["haftagunu"],
        tarih: DateTime.parse(json["tarih"]),
        uzuntarih: json["uzuntarih"],
      );
}
