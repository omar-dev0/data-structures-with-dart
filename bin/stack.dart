
import 'dart:io';

import 'linked_list.dart';

class Stack<T>{
  late LinkedList<T> _elements;
   T? top;
  int? size;

  Stack(){
    _elements = LinkedList<T>();
    size??= 0;
  }

  void push(T val)
  {
    _elements.add(val);
    size = size! +1;
    top = _elements.getLast();
  }

  T pop(){
    if(top == null) {
      throw 'no elements';
    }
    T val = _elements.delete(top!)!;
    top = _elements.getLast();
    size = size! -1;
    return val;
  }

  bool isEmpty(){
    return size == 0 ? true : false;
  }

  void display(){
    LinkedList<T> temp = _elements.shallowCopy();
    while(temp.size! != 0 ){
      stdout.write("${temp.getLast()} ");
      temp.remove(temp.getLast());
    }
      }
  }
