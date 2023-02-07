import 'package:flutter/material.dart';
import 'package:sphurti_app/custom_widgets/background_container.dart';
import 'package:sphurti_app/models/sports_model.dart';

class Sports extends StatelessWidget {
  const Sports({super.key, required this.sports, required this.imageUrl});
  final SportsModel sports;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backgroundContainer(
        context,
        backgroundPath: 'Assets/background/background_3.png',
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 80),
            Center(
              child: Text(
                sports.sport.toUpperCase(),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      'Registration Fees: ₹${sports.registrationFees}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Prize Money: ₹${sports.prizeMoney}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize:
                              Size.fromHeight(40),
                        ),
                        child: Text('Register Now'))
                  ]),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                    child: Image.network(imageUrl))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Schedule', style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: (sports.schedule.isEmpty) ? 1 : sports.schedule.length,
                itemBuilder: (context, index) {
                  if (sports.schedule.isEmpty) {
                    return Center(
                      child: Text('Schedule will be updated soon'),
                    );
                  }
                  return Center(
                    child: Image.network(
                      sports.schedule[index],
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null && loadingProgress.cumulativeBytesLoaded > (loadingProgress.expectedTotalBytes! / 2)
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
