import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.searchController,
  });
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        margin: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: TextField(
                controller: searchController,
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Chercher un évènement",
                ),
                onChanged: (value) {
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
