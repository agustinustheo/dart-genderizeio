import 'package:genderizeio/genderizeio.dart';

void main() {
  var genderize = GenderizeAPI();
  genderize.send('peter').then(
    (result) => print('${result.name}: ${result.gender}')
  );
}
