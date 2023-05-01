import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:test/test.dart';

void main() {
  group('Feature', () {
    final featureJson = jsonDecode('''{
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [125.6, 10.1]
  },
  "properties": {
    "name": "Dinagat Islands"
  }
}''');

//     final lineStringJson = jsonDecode('''{
//    "type": "LineString",
//    "coordinates": [
//      [100.0, 0.0],
//      [101.0, 1.0]
//    ]
//  }''');

    final feature = Feature.fromJson(featureJson);
    //final lineString = Geometry.fromJson(lineStringJson);
    final point = feature.geometry as Point;

    setUp(() {
      // Additional setup goes here.
    });

    test('Point Test', () {
      expect(point.coordinates.latitude, 125.6);
      expect(point.coordinates.longitude, 10.1);
    });
  });
}
