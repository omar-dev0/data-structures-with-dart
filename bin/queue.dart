import 'linked_list.dart';

class Queue<T>{
  late LinkedList<T> _elements;
   T? front;
  T? back;
  late int size;

  Queue(){
    _elements = LinkedList();
    size = 0;
  }

  void enqueue(T val){
    _elements.add(val);
    size++;
    size == 1 ? front = back = _elements.getFirst() : back = _elements.getLast();
  }

  void dequeue(){
    if(front == null)
      {
        throw 'no elements';
      }
    _elements.remove(front!);
    size--;
    size == 0 ? front =  back = null : front = _elements.getFirst();
  }

  bool isEmpty(){
    return size == 0 ? true : false;
  }


  void display(){
    _elements.display();
  }
}