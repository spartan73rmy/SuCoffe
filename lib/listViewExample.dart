import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data.dart';

class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new ListViewExampleState();
  }
}

class ListViewExampleState extends State<ListViewExample> {
  List<Container> _buildListItems() {
    int index = 0;
    return items.map((item) {
      var container = Container(
        decoration: index % 2 == 0
            ? new BoxDecoration(color: const Color(0xFF97CBD7))
            : new BoxDecoration(color: const Color(0xFFFFFFFF)),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(10.0),
              child: new CachedNetworkImage(
                imageUrl: item.imageURL,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    item.itemName,
                    style: new TextStyle(
                        fontWeight:  FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    item.description,
                    style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.0,
                        color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: _buildListItems(),
    );
  }
}
