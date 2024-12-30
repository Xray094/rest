class MetaModule {
  String createdAt;
  String updatedAt;
  String barcode;
  String qrcode;

  MetaModule({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrcode,
  });

  static MetaModule fromMap(Map<String, dynamic> map) {
    return MetaModule(
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      barcode: map['barcode'],
      qrcode: map['qrCode'],
    );
  }
}
