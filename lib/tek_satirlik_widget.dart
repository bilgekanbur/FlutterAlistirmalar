import 'package:flutter/material.dart';

class tekSatirlikListTile extends StatelessWidget {
  const tekSatirlikListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          title: Text("bilge sena kanbur"),
          subtitle: Text("gelişirici"),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
        ),
        Divider(
          thickness: 5,
          color: Colors.purple.shade100,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
