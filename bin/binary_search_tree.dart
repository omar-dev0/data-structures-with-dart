import 'dart:io';

class _Node{
  _Node? left;
  _Node? right;
  num data;
  _Node(this.data);
}


class BST<T>{
  _Node? _root;
  late int size ;
  BST(){
    size = 0;
  }

  void insert(num val){
    _insert(val, _root);
    size++;
  }

  bool search(num val)
  {
    return _search(val, _root);
  }

  void displayInOrder(){
    _displayInOrder(_root);
  }

  bool isEmpty(){
    return size == 0 ? true : false;
  }
  _Node _insert(num val , _Node? node)
  {
    if(_root == null)
      {
        return _Node(val);
      }
    else
      {
        if(val < node!.data)
          {
            node.left = _insert(val, node.left);
          }
        else
          {
            node.right = _insert(val, node.right);
          }
      }
    return node;
  }
  bool _search(num val , _Node? node)
  {
    if(node == null) {
      return false;
    }
    else
      {
        if(val < node.data)
          {
            return _search(val , node.left);
          }
        else if  (val > node.data)
          {
            return _search(val, node.right);
          }
        else
          {
            return true;
          }
      }
  }

  void _displayInOrder(_Node? node) {
    if(node == null) {
      return;
    }
    _displayInOrder(node.left);
    stdout.write('${node.data} ');
    _displayInOrder(node.right);
  }

}