class ReviewModule {
  int rating;
  String comment;
  String date;
  String reviewerName;
  String reviewerEmail;

  ReviewModule({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  static ReviewModule fromMap(Map<String, dynamic> map) {
    return ReviewModule(
      rating: map['rating'],
      comment: map['comment'],
      date: map['date'],
      reviewerName: map['reviewerName'],
      reviewerEmail: map['reviewerEmail'],
    );
  }

  static List<ReviewModule> fromlist(list) {
    List<ReviewModule> newlist = [];
    for (int i = 0; i < 2; i++) {
      newlist.add(ReviewModule.fromMap(list[i]));
    }
    return newlist;
  }
}
