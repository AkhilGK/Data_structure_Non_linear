class Node {
  late int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BST {
  Node? root;
  void insert(int dataIn) {
    Node? current = root;
    if (current == null) {
      root = Node(dataIn);
      return;
    }
    while (true) {
      if (dataIn <= current!.data) {
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

  void inOrdertravese(Node? rootIn) {
    if (rootIn == null) {
      return;
    }
    inOrdertravese(rootIn.left);
    print(rootIn.data);
    inOrdertravese(rootIn.right);
  }
}
