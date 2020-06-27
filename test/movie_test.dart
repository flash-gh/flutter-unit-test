import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.

void main() {
  test("HTTP REQUEST test", () async {
    final result = await http
        .get(Uri.encodeFull("http://omdbapi.com/?apikey=7c01d414+&t=avengers"));

    expect(result.statusCode, 200);
  });
}
