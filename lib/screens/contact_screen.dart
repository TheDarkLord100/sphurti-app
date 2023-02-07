import 'package:flutter/material.dart';
import 'package:sphurti_app/custom_widgets/background_container.dart';
import 'package:sphurti_app/models/contact.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundContainer(
      context,
      backgroundPath: 'Assets/background/background_1.png',
      child: ListView(children: [
        const SizedBox(
          height: 80,
        ),
        const Center(
          child: Text(
            "Faculty Coordinators",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 0.70,
          mainAxisSpacing: 4,
          crossAxisSpacing: 6,
          physics: const ClampingScrollPhysics(),
          children: List.generate(Contact.facultyContact.length, (index) {
            var currentContact = Contact.facultyContact[index];
            return Card(
              color: Colors.black,
              child: Column(
                children: [
                  Image.network(currentContact.imageUrl,
                      loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                      child: Text(
                    currentContact.name,
                    style: const TextStyle(color: Colors.white),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                      child: Text(
                    currentContact.designation,
                    style: const TextStyle(color: Colors.white),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Contact: ${currentContact.phone}',
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text(
            "Student Coordinators",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 0.70,
          mainAxisSpacing: 4,
          crossAxisSpacing: 6,
          physics: const ClampingScrollPhysics(),
          children: List.generate(Contact.studentContact.length, (index) {
            var currentContact = Contact.studentContact[index];
            return Card(
              color: Colors.black,
              child: Column(
                children: [
                  Image.network(currentContact.imageUrl),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                      child: Text(
                    currentContact.name,
                    style: const TextStyle(color: Colors.white),
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                      child: Text(
                    currentContact.designation,
                    style: const TextStyle(color: Colors.white),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Contact: ${currentContact.phone}',
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }),
        ),
        const SizedBox(
          height: 100,
        )
      ]),
    );
  }
}
