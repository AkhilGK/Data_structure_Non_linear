import 'tree.dart';

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;
  void insert(int dataIn) {
    Node? current = root;
    if (root?.data == null) {
      root = Node(dataIn);
      return;
    } else {
      while (true) {
        if (dataIn < current!.data) {
          if (current.left == null) {
            current.left = Node(dataIn);
            return;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = Node(dataIn);
            return;
          }
          current = current.right;
        }
      }
    }
  }

  void delete() {}
  void inorderTraversal(Node? binaryElement) {
    if (binaryElement == null) {
      return;
    }
    inorderTraversal(binaryElement.left);
    print(binaryElement.data);
    inorderTraversal(binaryElement.right);
  }
}
