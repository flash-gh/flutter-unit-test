import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/pages/reverse.dart';


void main() {
  test('String should be reversed', (){
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
}