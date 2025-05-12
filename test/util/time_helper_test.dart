// TODO 1: Write a main() method to execute your tests
// TODO 2: Create a group with the name of the class

// TODO 3.1: Write a test that the TimeHelper should return Morning
// TODO 3.2: Write a test that the TimeHelper should return Afternoon
// TODO 3.3: Write a test that the TimeHelper should return Evening
// TODO 3.4: Write a test that the TimeHelper should return Night


import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial/util/time_helper.dart';

void main(){

  group('Time Helper', (){
    group('get time of the day', (){
      test('This Should Be Morning', (){
        //arrange
        final currentTime = DateTime(2025, 01, 01, 8, 00);
        //act
        final String timeOfDay = TimeHelper.getTimeOfTheDay(time: currentTime);
        //assert
        expect(timeOfDay, 'Morning');
      });

      test('This Should Be Afternoon', (){
        //Arrange
        final DateTime currentTime = DateTime(2025, 04, 08, 13);
        //Act
        final String timeOfDay = TimeHelper.getTimeOfTheDay(time: currentTime);
        //Assert
        expect(timeOfDay, 'Afternoon');
      });

      test('This Should Be Night', (){
        //Arrange
        final DateTime currentTime = DateTime(2025, 04, 08, 2);
        //Act
        final String timeOfDay = TimeHelper.getTimeOfTheDay(time: currentTime);
        //Assert
        expect(timeOfDay, 'Night');
      });

      test('This Should Be Evening', (){
        //Arrange
        final DateTime currentTime = DateTime(2025, 04, 08, 23);
        //Act
        final String timeOfDay = TimeHelper.getTimeOfTheDay(time: currentTime);
        //Assert
        expect(timeOfDay, 'Evening');
      });
    });
  });

}