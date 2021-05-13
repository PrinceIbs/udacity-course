// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'package:task_03_category_route/category.dart';

// TODO: Define any constants
final _backgroundColor = Colors.green[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    List<Category> categories = <Category>[];

    for (int counter = 0; counter < _categoryNames.length; counter++) {
      categories.add(
        Category(
          name: _categoryNames[counter],
          color: _baseColors[counter],
          iconLocation: Icons.calculate_rounded,
        ),
      );
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      padding: EdgeInsets.only(top: 8.0),
      child: ListView.separated(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => categories[index],
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: Colors.blueGrey,
        ),
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(
        "Unit Converter",
        style: TextStyle(fontSize: 25),
      ),
      centerTitle: true,
      elevation: 0.0,
    );

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: appBar,
      body: listView,
    );
  }
}
