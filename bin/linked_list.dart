import 'dart:io';

class _LinkedListItem<T>{
  T data;
  _LinkedListItem<T>? next;
  _LinkedListItem({this.next, required this.data});
}

class LinkedList<T> {
  _LinkedListItem<T>? _head;
  int? size;
  LinkedList() {
    _head ??= null;
    size = 0;
  }

  void add(T val) {
    _LinkedListItem<T> item = _LinkedListItem(data: val);
    if (_head == null) {
      _head = item;
    } else {
      _LinkedListItem<T> tempHead = _head!;
      while (tempHead.next != null) {
        tempHead = tempHead.next!;
      }
      tempHead.next = item;
    }
    size = size! + 1;
  }

  void remove(T val) {
    if (_head == null) {
      throw 'no elements';
    } else if (_head?.data == val) {
      _head = _head?.next;
      size = size! - 1;
    } else {
      _LinkedListItem<T>? tempHead = _head;
      while (tempHead != null) {
        if (tempHead.next?.data == val) {
          tempHead.next = tempHead.next?.next;
          size = size! - 1;
          break;
        } else {
          tempHead = tempHead.next;
        }
      }
      if (tempHead == null) {
        throw 'element not found';
      }
    }
  }

  T? delete(T val) {
    if (_head == null) {
      throw 'no elements';
    } else if (_head?.data == val) {
      T? data = _head?.data;
      _head = _head?.next;
      size = size! - 1;
      return data;
    } else {
      _LinkedListItem<T>? tempHead = _head;
      while (tempHead != null) {
        if (tempHead.next?.data == val) {
          T? data = tempHead.next?.data;
          tempHead.next = tempHead.next?.next;
          size = size! - 1;
          return data;
        } else {
          tempHead = tempHead.next;
        }
      }
      if (tempHead == null) {
        return null;
      }
    }
    return null;
  }

  void insertAfter(T element, T val) {
    if (_head == null) {
      throw 'no elements';
    }
    _LinkedListItem<T>? tempHead = _head;
    while (tempHead != null && tempHead.data != element) {
      tempHead = tempHead.next;
    }
    if (tempHead == null) {
      throw 'element not found';
    }
    _LinkedListItem<T> item = _LinkedListItem(data: val);
    _LinkedListItem<T>? tempNext = tempHead.next;
    tempHead.next = item;
    item.next = tempNext;
  }

  T? search(T val) {
    if(_head == null)
      {
        throw 'no elements';
      }
    _LinkedListItem<T>? tempHead = _head;
    while(tempHead != null)
      {
        if(tempHead.data == val)
          {
            return val;
          }
        tempHead = tempHead.next;
      }
    return null;

  }

  List<T> findAll(T val){
    List<T> elements = [];
    if(_head == null)
    {
      throw 'no elements';
    }
    _LinkedListItem<T>? tempHead = _head;
    while(tempHead != null)
    {
      if(tempHead.data == val)
      {
        elements.add(val);
      }
      tempHead = tempHead.next;
    }
    return elements;
  }

  T getLast(){
    if(_head == null)
      {
        throw 'no elements';
      }
    _LinkedListItem<T> tempHead = _head!;
    while(tempHead.next != null)
      {
        tempHead = tempHead.next!;
      }
      return tempHead.data;
  }

  LinkedList<T> shallowCopy(){
    LinkedList<T> copy = LinkedList();
    _LinkedListItem? tempHead = _head;
    while(tempHead != null)
      {
        copy.add(tempHead.data);
        tempHead = tempHead.next;
      }
      return copy;
  }

  T? getFirst(){
    if(_head == null)
      {
        throw 'no elements';
      }
    return _head?.data;
      }
  void display() {
    if (_head == null) {
      throw 'no elements';
    } else {
      _LinkedListItem<T>? temp = _head;
      while (temp != null) {
        stdout.write("${temp.data} ");
        temp = temp.next;
      }
    }
  }
  }



