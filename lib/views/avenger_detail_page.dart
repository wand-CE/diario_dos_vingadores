import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvengerDetailPage extends StatelessWidget {
  AvengerDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final avengerName = Get.arguments['avengerName'];
    final avengerImage = Get.arguments['avengerImage'];
    final avengerIntelligence = Get.arguments['avengerIntelligence'];
    final avengerStrength = Get.arguments['avengerStrength'];
    final avengerSpeed = Get.arguments['avengerSpeed'];
    final avengerPower = Get.arguments['avengerPower'];
    final avengerCombat = Get.arguments['avengerCombat'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          avengerName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  avengerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Vingador:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),
            Text(
              avengerName,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Stats:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Inteligência: $avengerIntelligence',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              'Força: $avengerStrength',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              'Velocidade: $avengerSpeed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              'Poder: $avengerPower',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              'Combate: $avengerCombat',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
