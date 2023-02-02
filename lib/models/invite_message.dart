class InviteMessage {
  final String name;
  final String designation;
  final String imageUrl;
  final String message;

  static late List<InviteMessage> messageList;

  InviteMessage(
      {required this.name,
      required this.message,
      required this.designation,
      required this.imageUrl});

  factory InviteMessage.fromMap(Map<String, dynamic> map) {
    return InviteMessage(
        name: map['name'],
        message: map['message'],
        designation: map['designation'],
        imageUrl: map['imageUrl']);
  }
}
