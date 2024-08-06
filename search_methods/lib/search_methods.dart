import 'dart:math';

class SearchAlgorithms{
  static int linearSearch(List<dynamic> list, dynamic target){
    var stopWatch = Stopwatch()..start();
    for(int i = 0; i < list.length; i++){
      if(list[i] == target){
        stopWatch.stop();
        print("Linear Search Time: ${stopWatch.elapsedMicroseconds} microsecodnds");
        return i;
      }
    }
    stopWatch.stop();
    print("Linear Search Time: ${stopWatch.elapsedMicroseconds} microseconds");
    return -1;
  }
  static int binarySearch(List<dynamic> list, dynamic target){
    var stopWatch = Stopwatch()..start();
    int left = 0;
    int right = list.length-1;
    while (left <= right){
      int middle = left + (right - left) ~/ 2;
      if(list[middle] == target){
        stopWatch.stop();
        print("Binary Search Time: ${stopWatch.elapsedMicroseconds} microseconds");
        return middle;
      }else if(list[middle] < target){
        left = middle + 1;
      }else{
        right = middle -1;
      }
    }
    stopWatch.stop();
    print("Binary Search time: ${stopWatch.elapsedMicroseconds} microseconds");
    return -1;
  }
  static int jumpSearch(List<dynamic> list, dynamic target){
    var stopWatch = Stopwatch();
    int length = list.length;
    int step = sqrt(length).toInt();
    int prev = 0;
    while (list[min(step, length) - 1] < target){
      prev = step;
      step += sqrt(length).toInt();
      if(prev >= length){
        stopWatch.stop();
        print("JumpSearch Time: ${stopWatch.elapsedMicroseconds} microseconds");
        return -1;
      }
       while (list[prev] < target) {
      prev++;
      if (prev == min(step, length)) {
        stopWatch.stop();
        print('Jump Search time: ${stopWatch.elapsedMicroseconds} microseconds');
        return -1;
      }
    }
    }
    if (list[prev] == target) {
      stopWatch.stop();
      print('Jump Search time: ${stopWatch.elapsedMicroseconds} microseconds');
      return prev;
    }
    stopWatch.stop();
    print('Jump Search time: ${stopWatch.elapsedMicroseconds} microseconds');
    return -1;
  }
}