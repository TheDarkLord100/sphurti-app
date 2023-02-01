import 'package:flutter/material.dart';
class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16.0,top:10,right: 16.0),
        child: ListView(
          children: [
            Container(
                 height: 300,
                 width: 100,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/bsktbl.png'),
                                         fit: BoxFit.fill,
                                        
                        ),
                               shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                        ),
                  
             Container(
                 height: 300,
                 width: 300,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/bdmnt.png'),
                                         fit: BoxFit.fill,
                        ),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                        ),   
               Container(
                 height: 300,
                 width: 300,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/tbltns.jpg'),
                                         fit: BoxFit.fill,
                        ),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                        ),
               Container(
                 height: 300,
                 width: 300,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/vlbl.png'),
                                         fit: BoxFit.fill,
                        ),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                        ),
               Container(
                 height: 300,
                 width: 300,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/crckt.png'),
                                         fit: BoxFit.fill,
                        ),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                        ),
                 Container(
                 height: 300,
                 width: 300,
                decoration:  BoxDecoration(
                               image:  const DecorationImage(
                                         image:  AssetImage('Assets/images/ftbl.png'),
                                         fit: BoxFit.fill,
                        ),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom:10),
                      ),                                              
          ],
        ),
      ),
    );
    
  }
}