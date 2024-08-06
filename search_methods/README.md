## Search methods

this package will help you to search an item from a list in three different ways 

## Features 

Linear Search
Binary Search 
Jump Search 
## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

  List<int> intList = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  // Example list of strings
  List<String> stringList = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  // Example target values
  int intTarget = 50;
  String stringTarget = 'cherry';

  // Using Linear Search
  print('Linear Search:');
  int intIndex = SearchAlgorithms.linearSearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  int stringIndex = SearchAlgorithms.linearSearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');

  // Using Binary Search (Note: list must be sorted)
  print('\nBinary Search:');
  intIndex = SearchAlgorithms.binarySearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  stringIndex = SearchAlgorithms.binarySearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');

  // Using Jump Search (Note: list must be sorted)
  print('\nJump Search:');
  intIndex = SearchAlgorithms.jumpSearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  stringIndex = SearchAlgorithms.jumpSearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');
