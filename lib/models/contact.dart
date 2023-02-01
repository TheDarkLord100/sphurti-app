class Contact {
  final String phone;
  final String imageUrl;
  final String name;
  final String designation;

  static late List<Contact> facultyContact;
  static late List<Contact> studentContact;

  Contact(
      {required this.name,
      required this.phone,
      required this.designation,
      required this.imageUrl});

  factory Contact.fromMap(Map<String, dynamic> element) {
    return Contact(
        name: element['name'],
        phone: element['phone'],
        designation: element['designation'],
        imageUrl: element['imageUrl']);
  }
}
