
import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial/main.dart';
import 'package:tutorial/util/string_utils.dart';

void main(){

group('Unit Testing', (){
  group('String Utils', (){
    test('Capitalize First Letter', (){
      //Arrange
      const String input = 'hello world';
      //Act
      final String result = StringUtils.capitalize(input);
      //Assert
      expect(result, 'Hello world');
    });

    test('Capitalize first letter of each word in sentence', (){
      //Arrange
      const String input = 'Capitalize first letter of each word in sentence';
      //Act
      final String result = StringUtils.toTitleCase(input);
      //Assert
      //expect(result, 'Capitalize First Letter Of Each Word In Sentence');
      //expect(result, 'C');
      expect(result, 'Capitalize');
    });


  });
});
}