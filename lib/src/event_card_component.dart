import 'package:flutter/material.dart';
import 'package:myicclyon/src/constants.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.content,
    required this.postUrl,
    required this.type,
  });
  final String imgUrl, title, description, content, postUrl, type;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(
          left: 16.0, top: 0.0, right: 16.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.network(
              imgUrl,
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const SizedBox(
                    height: 150.0,
                    width: double.infinity,
                    child: Icon(Icons.broken_image),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              maxLines: 2,
              style: TextStyle(
                color: ColorsConstant.black,
                fontSize: FontSizeConstants.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            description,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
