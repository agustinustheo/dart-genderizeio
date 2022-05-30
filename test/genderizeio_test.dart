import 'package:genderizeio/genderizeio.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final genderize = GenderizeAPI();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      genderize.send('peter').then(
        (result) => expect(result.gender, 'male')
      );
    });
  });
}
