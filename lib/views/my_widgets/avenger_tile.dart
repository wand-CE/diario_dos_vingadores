import 'package:flutter/material.dart';

class AvengerTile extends StatelessWidget {
  final String avengerImage;
  final String avengerName;
  final String avengerStrength;

  final VoidCallback buttonFunction;

  const AvengerTile({
    super.key,
    required this.avengerImage,
    required this.avengerName,
    required this.avengerStrength,
    required this.buttonFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 1),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              avengerImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          avengerName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Poder: $avengerStrength"),
        onTap: buttonFunction,
      ),
    );
  }
}
