class DimensionModule {
  double width;
  double height;
  double depth;

  DimensionModule({
    required this.width,
    required this.height,
    required this.depth,
  });

  static DimensionModule fromMap(Map<String, dynamic> map) {
    return DimensionModule(
      width: map['width'] * 1.0,
      height: map['height'] * 1.0,
      depth: map['depth'] * 1.0,
    );
  }
}
