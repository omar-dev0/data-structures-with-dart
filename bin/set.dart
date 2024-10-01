
import 'linked_list.dart';

class Set <T>{
  late LinkedList _elements;
  late int size;
  Set(){
    _elements = LinkedList();
    size = 0;
  }

  void add(T val)
  {
    if(size == 0)
    {
      _elements.add(val);
      size++;
      return;
    }
    T? check = _elements.search(val);
    if(check == null)
    {
      _elements.add(val);
      size++;
    }
  }

  void remove(T val){
    _elements.remove(val);
    size--;
  }

  T delete(T val){
    T deletedItem =  _elements.delete(val);
    size--;
    return deletedItem;
  }

  void display(){
    _elements.display();
  }

  bool isEmpty(){
    return size == 0 ? true : false;
  }
}